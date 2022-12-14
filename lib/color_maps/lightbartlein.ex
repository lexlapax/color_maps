defmodule ColorMaps.Lightbartlein do
  @moduledoc """
  Color data for Light and Bartlein color maps.
  See more at http://geog.uoregon.edu/datagraphics/color_scales.htm.
  """

  @behaviour ColormapBehaviour
  @url "http://geog.uoregon.edu/datagraphics/color_scales.htm"

  #
  # Diverging Colormaps
  #
  # @maptype :diverging

  m_BROWN_TO_BLUE_10 = [
    [102, 47, 0],
    [153, 96, 53],
    [204, 155, 122],
    [216, 175, 151],
    [242, 218, 205],
    [204, 253, 255],
    [153, 248, 255],
    [101, 239, 255],
    [50, 227, 255],
    [0, 169, 204],
  ]

  m_BROWN_TO_BLUE_12 = [
    [51, 25, 0],
    [2, 47, 0],
    [53, 96, 53],
    [4, 155, 122],
    [16, 175, 151],
    [42, 218, 205],
    [4, 253, 255],
    [53, 248, 255],
    [1, 239, 255],
    [50, 227, 255],
    [0, 169, 204],
    [0, 122, 153],
  ]

  m_BLUE_TO_ORANGE_8 = [
    [0, 127, 255],
    [76, 195, 255],
    [153, 237, 255],
    [204, 255, 255],
    [255, 255, 204],
    [255, 238, 153],
    [255, 195, 76],
    [255, 127, 0],
  ]

  m_BLUE_TO_ORANGE_10 = [
    [0, 84, 255],
    [50, 153, 255],
    [101, 204, 255],
    [153, 237, 255],
    [204, 255, 255],
    [255, 255, 204],
    [255, 238, 153],
    [255, 204, 101],
    [255, 153, 50],
    [255, 85, 0],
  ]

  m_BLUE_TO_ORANGE_12 = [
    [0, 42, 255],
    [25, 101, 255],
    [50, 153, 255],
    [153, 237, 255],
    [101, 204, 255],
    [204, 255, 255],
    [255, 255, 204],
    [255, 238, 153],
    [255, 204, 101],
    [255, 153, 50],
    [255, 102, 25],
    [255, 42, 0],
  ]

  m_GREEN_TO_MAGENTA = [
    [0, 80, 0],
    [0, 134, 0],
    [0, 187, 0],
    [0, 241, 0],
    [80, 255, 80],
    [134, 255, 134],
    [187, 255, 187],
    [255, 255, 255],
    [255, 241, 255],
    [255, 187, 255],
    [255, 134, 255],
    [255, 80, 255],
    [241, 0, 241],
    [187, 0, 187],
    [134, 0, 134],
    [80, 0, 80],
  ]

  m_BLUE_TO_DARK_RED_12 = [
    [41, 10, 216],
    [38, 77, 255],
    [63, 160, 255],
    [114, 217, 255],
    [170, 247, 255],
    [224, 255, 255],
    [255, 255, 191],
    [255, 224, 153],
    [255, 173, 114],
    [247, 109, 94],
    [216, 38, 50],
    [165, 0, 33],
  ]

  m_BLUE_TO_DARK_RED_18 = [
    [36, 0, 216],
    [24, 28, 247],
    [40, 87, 255],
    [61, 135, 255],
    [86, 176, 255],
    [117, 211, 255],
    [153, 234, 255],
    [188, 249, 255],
    [234, 255, 255],
    [255, 255, 234],
    [255, 241, 188],
    [255, 214, 153],
    [255, 172, 117],
    [255, 120, 86],
    [255, 61, 61],
    [247, 39, 53],
    [216, 21, 47],
    [165, 0, 33],
  ]

  m_BLUE_TO_DARK_ORANGE_12 = [
    [30, 142, 153],
    [81, 195, 204],
    [153, 249, 255],
    [178, 252, 255],
    [204, 254, 255],
    [229, 255, 255],
    [255, 229, 204],
    [255, 202, 153],
    [255, 173, 101],
    [255, 142, 50],
    [204, 88, 0],
    [153, 63, 0],
  ]

  m_BLUE_TO_DARK_ORANGE_18 = [
    [0, 102, 102],
    [0, 153, 153],
    [0, 204, 204],
    [0, 255, 255],
    [51, 255, 255],
    [101, 255, 255],
    [153, 255, 255],
    [178, 255, 255],
    [203, 255, 255],
    [229, 255, 255],
    [255, 229, 203],
    [255, 202, 153],
    [255, 173, 101],
    [255, 142, 51],
    [255, 110, 0],
    [204, 85, 0],
    [153, 61, 0],
    [102, 39, 0],
  ]

  m_BLUE_TO_GREEN = [
    [0, 0, 255],
    [51, 51, 255],
    [101, 101, 255],
    [153, 153, 255],
    [178, 178, 255],
    [203, 203, 255],
    [229, 229, 255],
    [229, 255, 229],
    [203, 255, 203],
    [178, 255, 178],
    [153, 255, 153],
    [101, 255, 101],
    [51, 255, 51],
    [0, 255, 0],
  ]

  m_BLUE_TO_GREY = [
    [0, 153, 204],
    [102, 229, 255],
    [153, 255, 255],
    [204, 255, 255],
    [229, 229, 229],
    [153, 153, 153],
    [102, 102, 102],
    [51, 51, 51],
  ]

  m_BLUE_ORANGE_RED = [
    [7, 90, 255],
    [50, 118, 255],
    [89, 144, 255],
    [140, 178, 255],
    [191, 212, 255],
    [229, 238, 255],
    [247, 249, 255],
    [255, 255, 204],
    [255, 255, 153],
    [255, 255, 0],
    [255, 204, 0],
    [255, 153, 0],
    [255, 102, 0],
    [255, 0, 0],
  ]

  m_RED_YELLOW_BLUE = [
    [165, 0, 33],
    [216, 38, 50],
    [247, 109, 94],
    [255, 173, 114],
    [255, 224, 153],
    [255, 255, 191],
    [224, 255, 255],
    [170, 247, 255],
    [114, 216, 255],
    [63, 160, 255],
    [38, 76, 255],
  ]

  #
  # Sequential colormaps
  #
  # @maptype :sequential


  m_BLUE_7 = [
    [255, 255, 255],
    [204, 253, 255],
    [153, 248, 255],
    [102, 239, 255],
    [51, 227, 255],
    [0, 170, 204],
    [0, 122, 153],
  ]

  m_BLUE_10 = [
    [229, 255, 255],
    [204, 250, 255],
    [178, 242, 255],
    [153, 229, 255],
    [127, 212, 255],
    [101, 191, 255],
    [76, 165, 255],
    [50, 136, 255],
    [25, 101, 255],
    [0, 63, 255],
  ]

  @palettes  %{
    :blue7 => %Palette{name: "Blues7",
      map_type: :sequential,
      colors: m_BLUE_7,
      number: length(m_BLUE_7),},
    :blue10 => %Palette{name: "Blues10",
      map_type: :sequential,
      colors: m_BLUE_10,
      number: length(m_BLUE_10),},
    :bluedarkorange12 => %Palette{name: "BlueDarkOrange12",
      map_type: :diverging,
      colors: m_BLUE_TO_DARK_ORANGE_12,
      number: length(m_BLUE_TO_DARK_ORANGE_12),},
    :bluedarkorange18 => %Palette{name: "BlueDarkOrange18",
      map_type: :diverging,
      colors: m_BLUE_TO_DARK_ORANGE_18,
      number: length(m_BLUE_TO_DARK_ORANGE_18),},
    :bluedarkred12 => %Palette{name: "BlueDarkRed12",
      map_type: :diverging,
      colors: m_BLUE_TO_DARK_RED_12,
      number: length(m_BLUE_TO_DARK_RED_12),},
    :bluedarkred18 => %Palette{name: "BlueDarkRed18",
      map_type: :diverging,
      colors: m_BLUE_TO_DARK_RED_18,
      number: length(m_BLUE_TO_DARK_RED_18),},
    :bluegreen => %Palette{name: "BlueGreen",
      map_type: :diverging,
      colors: m_BLUE_TO_GREEN,
      number: length(m_BLUE_TO_GREEN),},
    :bluegrey => %Palette{name: "BlueGrey",
      map_type: :diverging,
      colors: m_BLUE_TO_GREY,
      number: length(m_BLUE_TO_GREY),},
    :bluegray => %Palette{name: "BlueGray",
      map_type: :diverging,
      colors: m_BLUE_TO_GREY,
      number: length(m_BLUE_TO_GREY),},
    :blueorange8 => %Palette{name: "BlueOrange8",
      map_type: :diverging,
      colors: m_BLUE_TO_ORANGE_8,
      number: length(m_BLUE_TO_ORANGE_8),},
    :blueorange10 => %Palette{name: "BlueOrange10",
      map_type: :diverging,
      colors: m_BLUE_TO_ORANGE_10,
      number: length(m_BLUE_TO_ORANGE_10),},
    :blueorange12 => %Palette{name: "BlueOrange12",
      map_type: :diverging,
      colors: m_BLUE_TO_ORANGE_12,
      number: length(m_BLUE_TO_ORANGE_12),},
    :blueorangered => %Palette{name: "BlueOrangeRed",
      map_type: :diverging,
      colors: m_BLUE_ORANGE_RED,
      number: length(m_BLUE_ORANGE_RED),},
    :brownblue10 => %Palette{name: "BrownBlue10",
      map_type: :diverging,
      colors: m_BROWN_TO_BLUE_10,
      number: length(m_BROWN_TO_BLUE_10),},
    :brownblue12 => %Palette{name: "BrownBlue12",
      map_type: :diverging,
      colors: m_BROWN_TO_BLUE_12,
      number: length(m_BROWN_TO_BLUE_12),},
    :greenmagenta => %Palette{name: "GreenMagenta",
      map_type: :diverging,
      colors: m_GREEN_TO_MAGENTA,
      number: length(m_GREEN_TO_MAGENTA),},
    :redyellownlue => %Palette{name: "RedYellowBlue",
      map_type: :diverging,
      colors: m_RED_YELLOW_BLUE,
      number: length(m_RED_YELLOW_BLUE),},
  }
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
  def palette_types(), do: [:sequential, :diverging]

  @doc "Returns The defined palette named by name parameter"
  # @spec palette(atom()) :: Palette.t()
  def palette(palette_name) do
    Map.get(@palettes, palette_name)
  end

end
