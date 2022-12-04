defmodule ColorMaps do

  # @type @colormaps :: list(ColormapBehaviour)
  @colormaps Utils.colormap_modules(Path.join(__DIR__, "color_maps"),__MODULE__)
  @palettetypes Enum.sort([:diverging, :qualitative, :sequential, :cyclic, :miscellaneous])


  @doc "Returns a list of names of defined palette types e.g. [:diverging, :sequential,:miscellaneous]"
  def palette_types() do
    @palettetypes
  end

  @doc "Returns a list of names of defined palettes of given type"
  @spec palette_names(atom()) :: list(atom())
  def palette_names(palettetype) do
    palettes = Enum.map(@colormaps, fn cmap ->
      cmap.palette_names(palettetype)
    end)
    Enum.sort(List.flatten(palettes))

  end

  # @doc "Returns a list of names of defined palettes"
  # @spec palette_names() :: list(atom())
  # def palette_names() do
  #   palettes = Enum.map(@colormaps, fn cmap ->
  #     cmap.palette_names()
  #   end)
  #   Enum.sort(List.flatten(palettes))
  # end


  @spec colormaps :: %{Module => String.t()}
  def colormaps() do
    @colormaps
  end

  def get_colormap(cmap) when is_bitstring(cmap) do
    mod = Module.concat([__MODULE__, cmap])
    if Map.has_key?(@colormaps, mod) do
      {:ok, mod}
    else
      {:err, "#{__MODULE__}.#{cmap} module not found"}
    end
  end

end
