defmodule ColorMaps.Cartocolors do
  @moduledoc """
  Color maps from CARTO's CartoColors
  Learn more at https://github.com/CartoDB/CartoColor
  CARTOColors are made available under a Creative Commons Attribution license:
  https://creativecommons.org/licenses/by/3.0/us/
  """

  @behaviour ColormapBehaviour
  @url "https://github.com/CartoDB/CartoColor"

  #
  # Sequential schemes
  #
  # @maptype :sequencial
  m_BURG = [
    [255, 198, 196],
    [244, 163, 168],
    [227, 129, 145],
    [204, 96, 125],
    [173, 70, 108],
    [139, 48, 88],
    [103, 32, 68],
  ]

  m_BURGYL = [
    [251, 230, 197],
    [245, 186, 152],
    [238, 138, 130],
    [220, 113, 118],
    [200, 88, 108],
    [156, 63, 93],
    [112, 40, 74],
  ]

  m_REDOR = [
    [246, 210, 169],
    [245, 183, 142],
    [241, 156, 124],
    [234, 129, 113],
    [221, 104, 108],
    [202, 82, 104],
    [177, 63, 100],
  ]

  m_ORYEL = [
    [236, 218, 154],
    [239, 196, 126],
    [243, 173, 106],
    [247, 148, 93],
    [249, 123, 87],
    [246, 99, 86],
    [238, 77, 90],
  ]

  m_PEACH = [
    [253, 224, 197],
    [250, 203, 166],
    [248, 181, 139],
    [245, 158, 114],
    [242, 133, 93],
    [239, 106, 76],
    [235, 74, 64],
  ]

  m_PINKYL = [
    [254, 246, 181],
    [255, 221, 154],
    [255, 194, 133],
    [255, 166, 121],
    [250, 138, 118],
    [241, 109, 122],
    [225, 83, 131],
  ]

  m_MINT = [
    [228, 241, 225],
    [180, 217, 204],
    [137, 192, 182],
    [99, 166, 160],
    [68, 140, 138],
    [40, 114, 116],
    [13, 88, 95],
  ]

  m_BLUGRN = [
    [196, 230, 195],
    [150, 210, 164],
    [109, 188, 144],
    [77, 162, 132],
    [54, 135, 122],
    [38, 107, 110],
    [29, 79, 96],
  ]

  m_DARKMINT = [
    [210, 251, 212],
    [165, 219, 194],
    [123, 188, 176],
    [85, 156, 158],
    [58, 124, 137],
    [35, 93, 114],
    [18, 63, 90],
  ]

  m_EMRLD = [
    [211, 242, 163],
    [151, 225, 150],
    [108, 192, 139],
    [76, 155, 130],
    [33, 122, 121],
    [16, 89, 101],
    [7, 64, 80],
  ]

  m_AGGRNYL = [
    [36, 86, 104],
    [15, 114, 121],
    [13, 143, 129],
    [57, 171, 126],
    [110, 197, 116],
    [169, 220, 103],
    [237, 239, 93],
  ]

  m_BLUYL = [
    [247, 254, 174],
    [183, 230, 165],
    [124, 203, 162],
    [70, 174, 160],
    [8, 144, 153],
    [0, 113, 139],
    [4, 82, 117],
  ]

  m_TEAL = [
    [209, 238, 234],
    [168, 219, 217],
    [133, 196, 201],
    [104, 171, 184],
    [79, 144, 166],
    [59, 115, 143],
    [42, 86, 116],
  ]

  m_TEALGRN = [
    [176, 242, 188],
    [137, 232, 172],
    [103, 219, 165],
    [76, 200, 163],
    [56, 178, 163],
    [44, 152, 160],
    [37, 125, 152],
  ]

  m_PURP = [
    [243, 224, 247],
    [228, 199, 241],
    [209, 175, 232],
    [185, 152, 221],
    [159, 130, 206],
    [130, 109, 186],
    [99, 88, 159],
  ]

  m_PURPOR = [
    [249, 221, 218],
    [242, 185, 196],
    [229, 151, 185],
    [206, 120, 179],
    [173, 95, 173],
    [131, 75, 160],
    [87, 59, 136],
  ]

  m_SUNSET = [
    [243, 231, 155],
    [250, 196, 132],
    [248, 160, 126],
    [235, 127, 134],
    [206, 102, 147],
    [160, 89, 160],
    [92, 83, 165],
  ]

  m_MAGENTA = [
    [243, 203, 211],
    [234, 169, 189],
    [221, 136, 172],
    [202, 105, 157],
    [177, 77, 142],
    [145, 53, 125],
    [108, 33, 103],
  ]

  m_SUNSETDARK = [
    [252, 222, 156],
    [250, 164, 118],
    [240, 116, 110],
    [227, 79, 111],
    [220, 57, 119],
    [185, 37, 122],
    [124, 29, 111],
  ]

  m_AGSUNSET = [
    [75, 41, 145],
    [135, 44, 162],
    [192, 54, 157],
    [234, 79, 136],
    [250, 120, 118],
    [246, 169, 122],
    [237, 217, 163],
  ]

  m_BRWNYL = [
    [237, 229, 207],
    [224, 194, 162],
    [211, 156, 131],
    [193, 118, 111],
    [166, 84, 97],
    [129, 55, 83],
    [84, 31, 63],
  ]

  # Diverging schemes
  # @maptype :diverging
  m_ARMYROSE = [
    [121, 130, 52],
    [163, 173, 98],
    [208, 211, 162],
    [253, 251, 228],
    [240, 198, 195],
    [223, 145, 163],
    [212, 103, 128],
  ]

  m_FALL = [
    [61, 89, 65],
    [119, 136, 104],
    [181, 185, 145],
    [246, 237, 189],
    [237, 187, 138],
    [222, 138, 90],
    [202, 86, 44],
  ]

  m_GEYSER = [
    [0, 128, 128],
    [112, 164, 148],
    [180, 200, 168],
    [246, 237, 189],
    [237, 187, 138],
    [222, 138, 90],
    [202, 86, 44],
  ]

  m_TEMPS = [
    [0, 147, 146],
    [57, 177, 133],
    [156, 203, 134],
    [233, 226, 156],
    [238, 180, 121],
    [232, 132, 113],
    [207, 89, 126],
  ]

  m_TEALROSE = [
    [0, 147, 146],
    [114, 170, 161],
    [177, 199, 179],
    [241, 234, 200],
    [229, 185, 173],
    [217, 137, 148],
    [208, 88, 126],
  ]

  m_TROPIC = [
    [0, 155, 158],
    [66, 183, 185],
    [167, 211, 212],
    [241, 241, 241],
    [228, 193, 217],
    [214, 145, 193],
    [199, 93, 171],
  ]

  m_EARTH = [
    [161, 105, 40],
    [189, 146, 90],
    [214, 189, 141],
    [237, 234, 194],
    [181, 200, 184],
    [121, 167, 172],
    [40, 135, 161],
  ]

  # Qualitative palettes
  # @maptype :qualitative
  m_ANTIQUE = [
    [133, 92, 117],
    [217, 175, 107],
    [175, 100, 88],
    [115, 111, 76],
    [82, 106, 131],
    [98, 83, 119],
    [104, 133, 92],
    [156, 156, 94],
    [160, 97, 119],
    [140, 120, 93],
    [124, 124, 124],
  ]

  m_BOLD = [
    [127, 60, 141],
    [17, 165, 121],
    [57, 105, 172],
    [242, 183, 1],
    [231, 63, 116],
    [128, 186, 90],
    [230, 131, 16],
    [0, 134, 149],
    [207, 28, 144],
    [249, 123, 114],
    [165, 170, 153],
  ]

  m_PASTEL = [
    [102, 197, 204],
    [246, 207, 113],
    [248, 156, 116],
    [220, 176, 242],
    [135, 197, 95],
    [158, 185, 243],
    [254, 136, 177],
    [201, 219, 116],
    [139, 224, 164],
    [180, 151, 231],
    [179, 179, 179],
  ]

  m_PRISM = [
    [95, 70, 144],
    [29, 105, 150],
    [56, 166, 165],
    [15, 133, 84],
    [115, 175, 72],
    [237, 173, 8],
    [225, 124, 5],
    [204, 80, 62],
    [148, 52, 110],
    [111, 64, 112],
    [102, 102, 102],
  ]

  m_SAFE = [
    [136, 204, 238],
    [204, 102, 119],
    [221, 204, 119],
    [17, 119, 51],
    [51, 34, 136],
    [170, 68, 153],
    [68, 170, 153],
    [153, 153, 51],
    [136, 34, 85],
    [102, 17, 0],
    [136, 136, 136],
  ]

  m_VIVID = [
    [229, 134, 6],
    [93, 105, 177],
    [82, 188, 163],
    [153, 201, 69],
    [204, 97, 176],
    [36, 121, 108],
    [218, 165, 27],
    [47, 138, 196],
    [118, 78, 159],
    [237, 100, 90],
    [165, 170, 153],
  ]

    @palettes  %{
      :burg => %Palette{name: "Burg",
        map_type: :sequential,
        colors: m_BURG,
        number: length(m_BURG)},
      :burgyl => %Palette{name: "BurgYl",
        map_type: :sequential,
        colors: m_BURGYL,
        number: length(m_BURGYL)},
      :redor => %Palette{name: "RedOr",
        map_type: :sequential,
        colors: m_REDOR,
        number: length(m_REDOR)},
      :oryel => %Palette{name: "OrYel",
        map_type: :sequential,
        colors: m_ORYEL,
        number: length(m_ORYEL)},
      :peach => %Palette{name: "Peach",
        map_type: :sequential,
        colors: m_PEACH,
        number: length(m_PEACH)},
      :pinkyl => %Palette{name: "PinkYl",
        map_type: :sequential,
        colors: m_PINKYL,
        number: length(m_PINKYL)},
      :mint => %Palette{name: "Mint",
        map_type: :sequential,
        colors: m_MINT,
        number: length(m_MINT)},
      :blugrn => %Palette{name: "BluGrn",
        map_type: :sequential,
        colors: m_BLUGRN,
        number: length(m_BLUGRN)},
      :darkmint => %Palette{name: "DarkMint",
        map_type: :sequential,
        colors: m_DARKMINT,
        number: length(m_DARKMINT)},
      :emrld => %Palette{name: "Emrld",
        map_type: :sequential,
        colors: m_EMRLD,
        number: length(m_EMRLD)},
      :aggrnyl => %Palette{name: "agGrnYl",
        map_type: :sequential,
        colors: m_AGGRNYL,
        number: length(m_AGGRNYL)},
      :bluyl => %Palette{name: "BluYl",
        map_type: :sequential,
        colors: m_BLUYL,
        number: length(m_BLUYL)},
      :teal => %Palette{name: "Teal",
        map_type: :sequential,
        colors: m_TEAL,
        number: length(m_TEAL)},
      :tealgrn => %Palette{name: "TealGrn",
        map_type: :sequential,
        colors: m_TEALGRN,
        number: length(m_TEALGRN)},
      :purp => %Palette{name: "Purp",
        map_type: :sequential,
        colors: m_PURP,
        number: length(m_PURP)},
      :purpor => %Palette{name: "PurpOr",
        map_type: :sequential,
        colors: m_PURPOR,
        number: length(m_PURPOR)},
      :sunset => %Palette{name: "Sunset",
        map_type: :sequential,
        colors: m_SUNSET,
        number: length(m_SUNSET)},
      :magenta => %Palette{name: "Magenta",
        map_type: :sequential,
        colors: m_MAGENTA,
        number: length(m_MAGENTA)},
      :sunsetdark => %Palette{name: "SunsetDark",
        map_type: :sequential,
        colors: m_SUNSETDARK,
        number: length(m_SUNSETDARK)},
      :agsunset => %Palette{name: "agSunset",
        map_type: :sequential,
        colors: m_AGSUNSET,
        number: length(m_AGSUNSET)},
      :brwnyl => %Palette{name: "BrwnYl",
        map_type: :sequential,
        colors: m_BRWNYL,
        number: length(m_BRWNYL)},
      :armyrose => %Palette{name: "ArmyRose",
        map_type: :diverging,
        colors: m_ARMYROSE,
        number: length(m_ARMYROSE),},
      :fall => %Palette{name: "Fall",
        map_type: :diverging,
        colors: m_FALL,
        number: length(m_FALL),},
      :geyser => %Palette{name: "Geyser",
        map_type: :diverging,
        colors: m_GEYSER,
        number: length(m_GEYSER),},
      :temps => %Palette{name: "Temps",
        map_type: :diverging,
        colors: m_TEMPS,
        number: length(m_TEMPS),},
      :tealrose => %Palette{name: "TealRose",
        map_type: :diverging,
        colors: m_TEALROSE,
        number: length(m_TEALROSE),},
      :tropic => %Palette{name: "Tropic",
        map_type: :diverging,
        colors: m_TROPIC,
        number: length(m_TROPIC),},
      :earth => %Palette{name: "Earth",
        map_type: :diverging,
        colors: m_EARTH,
        number: length(m_EARTH),},
      :antique => %Palette{name: "Antique",
        map_type: :qualitative,
        colors: m_ANTIQUE,
        number: length(m_ANTIQUE)},
      :bold => %Palette{name: "Bold",
        map_type: :qualitative,
        colors: m_BOLD,
        number: length(m_BOLD)},
      :pastel => %Palette{name: "Pastel",
        map_type: :qualitative,
        colors: m_PASTEL,
        number: length(m_PASTEL)},
      :prism => %Palette{name: "Prism",
        map_type: :qualitative,
        colors: m_PRISM,
        number: length(m_PRISM)},
      :safe => %Palette{name: "Safe",
        map_type: :qualitative,
        colors: m_SAFE,
        number: length(m_SAFE)},
      :vivid => %Palette{name: "Vivid",
        map_type: :qualitative,
        colors: m_VIVID,
        number: length(m_VIVID)},
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
    def palette_types(), do: [:sequential, :diverging, :qualitative]

    @doc "Returns The defined palette named by name parameter"
    # @spec palette(atom()) :: Palette.t()
    def palette(palette_name) do
      Map.get(@palettes, palette_name)
    end

end
