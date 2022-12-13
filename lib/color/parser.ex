defmodule Color.Parser do
  @moduledoc false

  pattern = "\\s*(-?\\d+)(\\%?)\\s*"
  @no_alpha_regex Regex.compile!("^#{pattern},#{pattern},#{pattern}\\)$")
  @alpha_regex Regex.compile!("^#{pattern},#{pattern},#{pattern},\\s*(\\d+\\.?\\d*)\\s*\\)$")

  def parse!(input) do
    {:ok, color} = parse(input)
    color
  end

  def parse("#" <> <<r :: binary-size(2), g :: binary-size(2), b :: binary-size(2)>>) do
    {:ok, Color.rgb(parse_hex(r), parse_hex(g), parse_hex(b))}
  end
  def parse("#" <> <<r :: binary-size(1), g :: binary-size(1), b :: binary-size(1)>>) do
    {:ok, Color.rgb(parse_hex(r <> r), parse_hex(g <> g), parse_hex(b <> b))}
  end

  def parse("rgb(" <> rest) do
    with {r, g, b, a} <- parse_color(rest, false, true),
      do: {:ok, Color.rgb(r, g, b, a)}
  end

  def parse("rgba(" <> rest) do
    with {r, g, b, a} <- parse_color(rest, true, true),
      do: {:ok, Color.rgb(r, g, b, a)}
  end

  def parse("hsl(" <> rest) do
    parse_hsl(rest, false)
  end

  def parse("hsla(" <> rest) do
    parse_hsl(rest, true)
  end

  def parse(name) when is_atom(name) do
    parse(Atom.to_string(name))
  end

  def parse(name) when is_binary(name) do
    case Map.get(Color.named_colors(), name) do
      nil -> {:error, :no_match}
      rgb_str ->
        {status, color} = parse(rgb_str)
        {status, Color.rgb(color.red, color.green, color.blue, color.alpha, name)}
    end
  end

  defp parse_hsl(rest, expect_alpha) do
    with {h, {s, :percent}, {l, :percent}, a} <- parse_color(rest, expect_alpha, false),
      do: {:ok, Color.hsl(h, s, l, a)}
  end

  defp parse_color(binary, expect_alpha, allow_initial_percent) do
    regex = if expect_alpha, do: @alpha_regex, else: @no_alpha_regex
    case {allow_initial_percent, Regex.run(regex, binary, capture: :all_but_first)} do
      {true, [a, "", b, "", c, "" | alpha]} ->
        {parse_int(a), parse_int(b), parse_int(c), parse_alpha(alpha, expect_alpha)}
      {true, [a, "%", b, "%", c, "%" | alpha]} ->
        {from_percent(a), from_percent(b), from_percent(c), parse_alpha(alpha, expect_alpha)}
      {false, [a, "", b, "%", c, "%" | alpha]} ->
        {parse_int(a), from_percent(b), from_percent(c), parse_alpha(alpha, expect_alpha)}
      _ ->
        {:error, :no_match}
    end
  end

  defp parse_alpha([], false), do: 1.0
  defp parse_alpha([alpha], true) do
    {float, ""} = Float.parse alpha
    float
  end

  def from_percent(p) when is_binary(p), do: from_percent(parse_int(p))
  def from_percent(p), do: {p/100, :percent}

  # todo: raise if not 0 <= value <= 255
  defp parse_hex(s), do: String.to_integer(s, 16)
  defp parse_int(s), do: String.to_integer(s)
end
