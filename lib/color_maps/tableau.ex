defmodule ColorMaps.Tableau do
  @moduledoc """
  Color palettes derived from Tableau: http://www.tableausoftware.com/
  See also:
  http://kb.tableausoftware.com/articles/knowledgebase/creating-custom-color-palettes
  http://tableaufriction.blogspot.ro/2012/11/finally-you-can-use-tableau-data-colors.html
  """

  @behaviour ColormapBehaviour
  @url "http://www.tableausoftware.com"

  @maptype :qualitative

  # Tableau 10
  tableau_10_data = [[ 31, 119, 180],
     [255, 127,  14],
     [ 44, 160,  44],
     [214,  39,  40],
     [148, 103, 189],
     [140,  86,  75],
     [227, 119, 194],
     [127, 127, 127],
     [188, 189,  34],
     [ 23, 190, 207]]

  # Tableau 10 Light
  tableau_light_10_data =
    [[174, 199, 232],
     [255, 187, 120],
     [152, 223, 138],
     [255, 152, 150],
     [197, 176, 213],
     [196, 156, 148],
     [247, 182, 210],
     [199, 199, 199],
     [219, 219, 141],
     [158, 218, 229]]

  # Tableau 10 Medium
  tableau_medium_10_data =
    [[114, 158, 206],
     [255, 158,  74],
     [103, 191,  92],
     [237, 102,  93],
     [173, 139, 201],
     [168, 120, 110],
     [237, 151, 202],
     [162, 162, 162],
     [205, 204,  93],
     [109, 204, 218]]

  # Tableau 20
  tableau_20_data =
     [[ 31, 119, 180],
     [174, 199, 232],
     [255, 127,  14],
     [255, 187, 120],
     [ 44, 160,  44],
     [152, 223, 138],
     [214,  39,  40],
     [255, 152, 150],
     [148, 103, 189],
     [197, 176, 213],
     [140,  86,  75],
     [196, 156, 148],
     [227, 119, 194],
     [247, 182, 210],
     [127, 127, 127],
     [199, 199, 199],
     [188, 189,  34],
     [219, 219, 141],
     [ 23, 190, 207],
     [158, 218, 229]]

  # Gray 5
  gray_5_data =
    [[ 96,  99, 106],
     [165, 172, 175],
     [ 65,  68,  81],
     [143, 135, 130],
     [207, 207, 207]]

  # Color Blind 10
  color_blind_10_data =
    [[  0, 107, 164],
     [255, 128,  14],
     [171, 171, 171],
     [ 89,  89,  89],
     [ 95, 158, 209],
     [200,  82,   0],
     [137, 137, 137],
     [162, 200, 236],
     [255, 188, 121],
     [207, 207, 207]]

  # Traffic Light 9
  traffic_light_9_data =
    [[177,   3,  24],
     [219, 161,  58],
     [ 48, 147,  67],
     [216,  37,  38],
     [255, 193,  86],
     [105, 183, 100],
     [242, 108, 100],
     [255, 221, 113],
     [159, 205, 153]]

  # Purple-Gray 6
  purple_gray_6_data =
    [[123, 102, 210],
     [220,  95, 189],
     [148, 145, 123],
     [153,  86, 136],
     [208, 152, 238],
     [215, 213, 197]]

  # Purple-Gray 12
  purple_gray_12_data =
    [[123, 102, 210],
     [166, 153, 232],
     [220,  95, 189],
     [255, 192, 218],
     [ 95,  90,  65],
     [180, 177, 155],
     [153,  86, 136],
     [216, 152, 186],
     [171, 106, 213],
     [208, 152, 238],
     [139, 124, 110],
     [219, 212, 197]]

  # Blue-Red 6
  blue_red_6_data =
    [[ 44, 105, 176],
     [240,  39,  32],
     [172,  97,  60],
     [107, 163, 214],
     [234, 107, 115],
     [233, 195, 155]]

  # Blue-Red 12
  blue_red_12_data =
    [[ 44, 105, 176],
     [181, 200, 226],
     [240,  39,  32],
     [255, 182, 176],
     [172,  97,  60],
     [233, 195, 155],
     [107, 163, 214],
     [181, 223, 253],
     [172, 135,  99],
     [221, 201, 180],
     [189,  10,  54],
     [244, 115, 122]]

  # Green-Orange 6
  green_orange_6_data =
    [[ 50, 162,  81],
     [255, 127,  15],
     [ 60, 183, 204],
     [255, 217,  74],
     [ 57, 115, 124],
     [184,  90,  13]]

  # Green-Orange 12
  green_orange_12_data =
    [[ 50, 162,  81],
     [172, 217, 141],
     [255, 127,  15],
     [255, 185, 119],
     [ 60, 183, 204],
     [152, 217, 228],
     [184,  90,  13],
     [255, 217,  74],
     [ 57, 115, 124],
     [134, 180, 169],
     [130, 133,  59],
     [204, 201,  77]]

  @palettes %{
    :tableau_10 => %Palette{name: "Tableau_10",
      map_type: @maptype,
      colors: tableau_10_data,
      number: length(tableau_10_data)},
    :tableau_light_10 => %Palette{name: "TableauLight_10",
      map_type: @maptype,
      colors: tableau_light_10_data,
      number: length(tableau_light_10_data)},
    :tableau_medium_10 => %Palette{name: "TableauMedium_10",
      map_type: @maptype,
      colors: tableau_medium_10_data,
      number: length(tableau_medium_10_data)},
    :tableau_20 => %Palette{name: "Tableau_20",
      map_type: @maptype,
      colors: tableau_20_data,
      number: length(tableau_20_data)},
    :gray_5 => %Palette{name: "Gray_5",
      map_type: @maptype,
      colors: gray_5_data,
      number: length(gray_5_data)},
    :color_blind_10 => %Palette{name: "ColorBlind_10",
      map_type: @maptype,
      colors: color_blind_10_data,
      number: length(color_blind_10_data)},
    :traffic_light_9 => %Palette{name: "TrafficLight_9",
      map_type: @maptype,
      colors: traffic_light_9_data,
      number: length(traffic_light_9_data)},
    :purple_gray_6 => %Palette{name: "PurpleGray_6",
      map_type: @maptype,
      colors: purple_gray_6_data,
      number: length(purple_gray_6_data)},
    :purple_gray_12 => %Palette{name: "PurpleGray_12",
      map_type: @maptype,
      colors: purple_gray_12_data,
      number: length(purple_gray_12_data)},
    :blue_red_6 => %Palette{name: "BlueRed_6",
      map_type: @maptype,
      colors: blue_red_6_data,
      number: length(blue_red_6_data)},
    :blue_red_12 => %Palette{name: "BlueRed_12",
      map_type: @maptype,
      colors: blue_red_12_data,
      number: length(blue_red_12_data)},
    :green_orange_6 => %Palette{name: "GreenOrange_6",
      map_type: @maptype,
      colors: green_orange_6_data,
      number: length(green_orange_6_data)},
    :green_orange_12 => %Palette{name: "GreenOrange_12",
      map_type: @maptype,
      colors: green_orange_12_data,
      number: length(green_orange_12_data)},
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
    end) |> Enum.sort
  end

  @doc "Returns a list of names of defined palette types e.g. ['diverging', 'sequential','miscellaneous']"
  @spec palette_types() :: list(atom())
  def palette_types(), do: [@maptype]

  @doc "Returns The defined palette named by name parameter"
  # @spec palette(atom()) :: Palette.t()
  def palette(palette_name) do
    Map.get(@palettes, palette_name)
  end

end
