defmodule Utils do

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
