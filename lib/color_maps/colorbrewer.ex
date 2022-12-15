defmodule ColorMaps.Colorbrewer do
  @moduledoc """

  View this color map at colorbrewer2.org. This will open
  """

  @behaviour ColormapBehaviour
  @url "http://colorbrewer2.org"

  @palettes ColorMaps.Colorbrewer.Parser.parse_json()
  @spec name :: atom()
  def name() do
    __MODULE__
  end

  @spec url :: String.t()
  def url(),  do: @url

  @spec palette_names() :: list(atom())
  def palette_names() do
    Map.keys(@palettes) |> Enum.sort
  end


  @spec palette_names(atom()) :: list(atom())
  def palette_names(map_type) do
    Enum.reduce(@palettes, [], fn {palette_name, palette}, palettes ->
      if (palette.map_type() == map_type), do: [palette_name | palettes]
    end)
  end

  @doc "Returns a list of names of defined palette types e.g. ['diverging', 'sequential','miscellaneous']"
  @spec palette_types() :: list(atom())
  def palette_types(), do: [:sequential, :diverging, :qualitative]

  @doc "Returns The defined palette named by name parameter"
  # @spec palette(atom()) :: Palette.t()
  def palette(palette_name) do
    Map.get(@palettes, palette_name)
  end

end
