defmodule ColorMaps do
  # @type @colormaps :: list(ColormapBehaviour)
  @colormaps Utils.colormap_modules()
  @palettetypes Enum.sort([:diverging, :qualitative, :sequential, :cyclic, :miscellaneous])

  #@colormaps ls
  @moduledoc """
  Documentation for `ColorMaps`.
  alias Mix.Utils
  """

  @doc """
  Hello world.

  ## Examples

      iex> ColorMaps.hello()
      :world

  """
  def hello do
    :world
    IO.inspect(@colormaps)
  end

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

  @doc "Returns a list of names of defined palettes"
  @spec palette_names() :: list(atom())
  def palette_names() do
    palettes = Enum.map(@colormaps, fn cmap ->
      cmap.palette_names()
    end)
    Enum.sort(List.flatten(palettes))
  end


  @spec colormap_names() :: list(String.t())
  def colormap_names() do
    Enum.map(@colormaps, fn cmap -> cmap.name end)
  end

  def colormaps() do
    @colormaps
  end

end
