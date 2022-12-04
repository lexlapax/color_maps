defmodule Utils do
  def to_hex(value) when is_float(value), do:
    to_hex(round(value))

  def to_hex(value) when value < 16, do:
    "0" <> Integer.to_string(value, 16)

  def to_hex(value) when is_integer(value), do:
    Integer.to_string(value, 16)

  def to_hex(value) when is_list(value) do
    "#" <> Enum.join(Enum.map(value, fn val -> to_hex(val) end))
  end

  def rgb_tofloat(value) when is_float(value), do:
    rgb_tofloat(round(value))

  def rgb_tofloat(value) when is_integer(value), do:
    value/255

  def rgb_tofloat(value) when is_list(value) do
    Enum.map(value, fn val -> rgb_tofloat(val) end)
  end

  def colormap_modules() do
    Enum.map(Path.wildcard(Path.join(__DIR__,"color_maps/*.ex")), fn path ->
      for {mod, _bin} <- Code.compile_file(path), do: mod
    end)
    |> List.flatten()
    # []
  end

end
