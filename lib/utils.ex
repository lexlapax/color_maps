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

  # @spec colormap_modules :: %{module() => String.t()}
  # def colormap_modules(), do: colormap_modules(Path.join(__DIR__,"color_maps"))

  # @spec colormap_modules(String.t()) :: %{module() => String.t()}
  # def colormap_modules(modpath), do: colormap_modules(modpath, ColorMaps)

  @spec colormap_modules(String.t(), module()) :: %{module() => String.t()}
  def colormap_modules(modpath, basemod) do
    Enum.map(Path.wildcard("#{modpath}/*.ex"), fn path ->
      Path.basename(path) |> Path.rootname() |> String.capitalize()
    end)
    |> Enum.into(%{}, fn modfile ->
      mod = Module.concat([basemod, modfile])
      url = mod.url()
      {mod, url }
    end)
  end

end
