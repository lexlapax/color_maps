defmodule Color do
  @moduledoc """
  Represents a Color in the form of
      red: 0.0, # 0-255
      green: 0.0, # 0-255
      blue: 0.0, # 0-255
      alpha: 1.0  # 0-1
      name: "" # name of color
  """

  # taken from https://github.com/alvinlindstam/css_colors/blob/master/lib/CssColors/rgb.ex
  @type t :: %__MODULE__{red: number(), green: number(), blue: number(), alpha: number(), name: String.t() }
  defstruct [red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0, name: ""] # r, g , b values 0 - 255, alpha values 0.0 to 1.0, name defaults to ""

  @spec rgb(
          number | {number, :percent},
          number | {number, :percent},
          number | {number, :percent},
          number,
          any
        ) :: Colors.Color.t()
  def rgb(red, green, blue, alpha\\1.0, name \\"")
  def rgb({red, :percent}, {green, :percent}, {blue, :percent}, alpha, name)  do
    rgb(red * 255, green * 255, blue * 255, alpha, name)
  end

  def rgb(red, green, blue, alpha, name)  do
    %__MODULE__{
      red: cast(red, :red),
      green: cast(green, :green),
      blue: cast(blue, :blue),
      alpha: cast(alpha, :alpha),
      name: name
    }
  end

  @spec to_string(Colors.Color.t(), :hex | nil | :rgba) :: String.t()
  def to_string(struct, type\\nil)

  def to_string(struct, :nil) do
    type = case struct.alpha do
      1.0 -> :hex
      _ -> :rgba
    end
    to_string(struct, type)
  end

  def to_string(%__MODULE__{red: r, green: g, blue: b, alpha: alpha, name: _}, :rgba) do
    "rgba(#{round(r)}, #{round(g)}, #{round(b)}, #{alpha})"
  end
  def to_string(%__MODULE__{red: r, green: g, blue: b, alpha: 1.0, name: _}, :hex) do
    "#" <> to_hex(r) <> to_hex(g) <> to_hex(b)
  end

  def to_rgblist(%__MODULE__{red: r, green: g, blue: b, alpha: _, name: _}) do
    [r, g, b]
  end

  def to_rgbalist(%__MODULE__{red: r, green: g, blue: b, alpha: a, name: _}) do
    [r, g, b, a]
  end

  @spec to_hsl(Colors.Color.t()) :: {float, float, float, float, String.t()}
  def to_hsl(%__MODULE__{red: r, green: g, blue: b, alpha: a, name: n}) do
    r = r/255
    g = g/255
    b = b/255

    colors = [r, g, b]
    max_color = Enum.max colors
    min_color = Enum.min colors

    l = (max_color + min_color) / 2

    if max_color == min_color do
      {0.0, 0.0, l}
    else
      color_diff = max_color - min_color
      s = if l > 0.5,
        do: color_diff / (2 - max_color - min_color),
        else: color_diff / (max_color + min_color)

      h = case max_color do
        ^r when g < b ->  (g - b) / color_diff + 6
        ^r ->             (g - b) / color_diff
        ^g ->             (b - r) / color_diff + 2
        ^b ->             (r - g) / color_diff + 4
      end

      h = h / 6
      {h * 360, s, l, a, n}
    end
  end

  #
  # hue:        0.0, # 0-360 (degrees)
  # saturation: 0.0, # 0-1 (percent)
  # lightness:  0.0, # 0-1 (percent)
  # alpha:      1.0  # 0-1 (percent)
  # name: string
  @spec hsl(number(), number(), number(), number(), String.t()) :: Colors.Color.t()
  def hsl(hue, saturation, lightness, alpha, name \\ "") do
    h = cast(hue, :hue)
    s = cast(saturation, :saturation)
    l = cast(lightness, :lightness)
    a = cast(alpha, :alpha)
    h = h/360
    m2 = if l <= 0.5,
      do: l * (s + 1),
      else: l + s - l * s
    m1 = l * 2 - m2
    r = hue_to_rgb(m1, m2, h + 1 / 3)
    g = hue_to_rgb(m1, m2, h    )
    b = hue_to_rgb(m1, m2, h - 1 / 3)
    %__MODULE__{
      red: r*255,
      green: g*255,
      blue: b*255,
      alpha: a,
      name: name}
  end

  defp hue_to_rgb(m1, m2, h) do
    h = if h < 0, do: h + 1, else: h
    h = if h > 1, do: h - 1, else: h
    case h do
      h when h * 6 < 1 -> m1 + (m2 - m1 ) * h * 6
      h when h * 2 < 1 -> m2
      h when h * 3 < 2 -> m1 + (m2 - m1 ) * ( 2 / 3 - h) * 6
      _ -> m1
    end
  end

  @spec cast(number, :red | :green | :blue | :hue | :lightness | :saturation | :alpha) :: number
  def cast(value, field) when field in [:red, :green, :blue] do
    value/1
    |> min(255)
    |> max(0)
  end
  def cast(hue, :hue) when hue < 0, do: cast(hue + 360, :hue)
  def cast(hue, :hue) when hue >= 360, do: cast(hue - 360, :hue)
  def cast(hue, :hue), do: hue/1
  def cast(value, field) when field in [:saturation, :lightness, :alpha] do
    value/1
    |> min(1.0)
    |> max(0.0)
  end


  def to_hex(value) when is_float(value), do:
    to_hex(round(value))

  def to_hex(value) when value < 16, do:
    "0" <> Integer.to_string(value, 16)

  def to_hex(value) when is_integer(value), do:
    Integer.to_string(value, 16)

  @spec named_color!(atom|String.t()) :: Color.t()
  def named_color!(name) do
    {:ok, color} = named_color(name)
    color
  end

  @spec named_color(atom|String.t()) :: {:error, :no_match | Color.t()} | {:ok, Color.t()}
  def named_color(name), do: Color.Parser.parse(name)

  @spec named_colors :: %{optional(String.t()) => String.t()}
  def named_colors do
    Color.NamedColors.named_colors()
  end
end
