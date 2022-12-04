defmodule ColorMaps.Wesanderson do
  @moduledoc """
  See https://github.com/jiffyclub/palettable/blob/master/palettable/wesanderson/wesanderson.py
  Color palettes derived from http://wesandersonpalettes.tumblr.com/.
  """

  @behaviour ColormapBehaviour
  @url "http://wesandersonpalettes.tumblr.com/"

  @maptype :sequential

  # Tumblr palettes in chronological order
  @palettes  %{
    :chevalier => %Palette{name: "Chevalier",
      colors: [[53, 82, 67], [254, 202, 73], [201, 213, 213], [187, 162, 137]],
      map_type: @maptype,
      url: @url <> "post/79263620764/hotel-chevalier"},
    :moonrise1 => %Palette{name: "Moonrise1",
      colors: [[114, 202, 221], [240, 165, 176], [140, 133, 54], [195, 180, 119],[250, 208, 99]],
      map_type: @maptype,
      url: @url <> "post/79263667140/sam-i-love-you-but-you-dont-know-what-youre"},
    :mendl => %Palette{name: "Mendl",
      colors: [[222, 141, 185], [184, 192, 246], [207, 147, 135], [92, 128, 204]],
      map_type: @maptype,
      url: @url <> "post/79348206200/mendls-heaven"},
    :margot1 => %Palette{name: "Margot1",
      colors: [[137, 119, 18], [243, 194, 164], [246, 159, 151], [254, 214, 140],[98, 144, 117]],
      map_type: @maptype,
      url: @url <> "post/79348364517/margot-takes-a-bath"},
    :cavalcanti => %Palette{name: "Cavalcanti",
      colors: [[209, 170, 0], [8, 50, 19], [146, 148, 96], [111, 152, 121],[132, 33, 17]],
      map_type: @maptype,
      url: @url <> "post/79348553036/castello-cavalcanti-how-can-i-help"},
    :moonrise2 => %Palette{name: "Moonrise2",
      colors: [[102, 124, 116], [181, 106, 39], [194, 186, 124], [31, 25, 23]],
      map_type: @maptype,
      url: @url <> "post/79641731527/sam-why-do-you-always-use-binoculars-suzy-it"},
    :margot2 => %Palette{name: "Margot2",
      colors: [[118, 139, 147], [188, 36, 15], [249, 236, 197], [212, 115, 41]],
      map_type: @maptype,
      url: @url <> "post/79641785036/margot-takes-a-break"},
    :moonrise3 => %Palette{name: "Moonrise3",
      colors: [[242, 218, 82], [197, 157, 0], [203, 203, 201], [27, 30, 20]],
      map_type: @maptype,
      url: @url <> "post/79783357790/suzy-ive-always-wanted-to-be-an-orphan-most-of"},
    :grandbudapest1 => %Palette{name: "GrandBudapest1",
      colors: [[238, 174, 101], [251, 79, 85], [72, 19, 19], [204, 95, 39]],
      map_type: @maptype,
      url: @url <> "post/79784389334/the-grand-budapest-hotel"},
    :moonrise4 => %Palette{name: "Moonrise4",
      colors: [[123, 135, 97], [193, 166, 46], [79, 143, 107], [59, 69, 60],[159, 50, 8]],
      map_type: @maptype,
      url: @url <> "post/79956897654/coming-soon"},
    :zissou => %Palette{name: "Zissou",
      colors: [[0, 153, 230], [18, 37, 90], [242, 56, 20], [223, 183, 139],[182, 195, 197]],
      map_type: @maptype,
      url: @url <> "post/79956949771/steve-zissou-dont-point-that-gun-at-him-hes-an"},
    :royal1 => %Palette{name: "Royal1",
      colors: [[121, 164, 58], [242, 214, 175], [94, 72, 41], [24, 20, 1]],
      map_type: @maptype,
      url: @url <> "post/79957796915/royal-o-reilly-tenenbaum-1932-2001"},
    :darjeeling1 => %Palette{name: "Darjeeling1",
      colors: [[158, 151, 151], [194, 142, 0], [131, 102, 89], [156, 90, 51]],
      map_type: @maptype,
      url: @url <> "post/80149649946/jack-i-wonder-if-the-three-of-us-wouldve-been"},
    :fantasticfox1 => %Palette{name: "FantasticFox1",
      colors: [[249, 219, 32], [147, 75, 78], [66, 23, 13], [194, 121, 34],[226, 200, 167]],
      map_type: @maptype,
      url: @url <> "post/80149872170/mrs-fox-you-know-you-really-are-fantastic-mr"},
    :margot3 => %Palette{name: "Margot3",
      colors: [[135, 162, 164], [202, 160, 101], [214, 202, 191], [214, 160, 160]],
      map_type: @maptype,
      url: @url <> "post/109473707895/etheline-raleigh-says-youve-been-spending-six"},
    :grandbudapest2 => %Palette{name: "GrandBudapest2",
      colors: [[255, 166, 142], [251, 204, 183], [140, 17, 8], [41, 11, 4]],
      map_type: @maptype,
      url: @url <> "post/109473911685/m-gustave-you-see-there-are-still-faint"},
    :aquatic1 => %Palette{name: "Aquatic1",
      colors: [[52, 36, 25], [28, 64, 39], [241, 201, 14], [102, 88, 153],[184, 147, 130]],
      map_type: @maptype,
      url: @url <> "post/109568074320/steve-zissou-the-deeper-you-go-the-weirder-life"},
    :darjeeling2 => %Palette{name: "Darjeeling2",
      colors: [[213, 227, 216], [97, 138, 152], [249, 218, 149], [174, 75, 22],[120, 112, 100]],
      map_type: @maptype,
      url: @url <> "post/109980167015/peter-fuck-the-itinerary"},
    :fantasticfox2 => %Palette{name: "FantasticFox2",
      colors: [[228, 191, 68], [198, 87, 66], [154, 208, 187], [51, 39, 55],[171, 161, 141]],
      map_type: @maptype,
      url: @url <> "post/110716093015/ash-should-we-dance"},
    :grandbudapest3 => %Palette{name: "GrandBudapest3",
      colors: [[255, 220, 182], [37, 56, 69], [231, 173, 157], [102, 117, 110],[139, 63, 49], [150, 109, 53]],
      map_type: @maptype,
      url: @url <> "post/112305028860/m-gustave-mendls-is-the-best"},
    :royal2 => %Palette{name: "Royal2",
      colors: [[194, 171, 186], [140, 59, 73], [182, 172, 166], [33, 32, 83],[209, 211, 213]],
      map_type: @maptype,
      url: @url <> "post/115124780615/royal-anybody-interested-in-grabbing-a-couple-of"},
    :moonrise5 => %Palette{name: "Moonrise5",
      colors: [[223, 140, 144], [216, 210, 142], [245, 190, 37], [61, 74, 28],[209, 48, 96], [168, 107, 76]],
      map_type: @maptype,
      url: @url <> "post/116909186645/walt-bishop-our-daughters-been-abducted-by-one"},
    :grandbudapest4 => %Palette{name: "GrandBudapest4",
      colors: [[186, 110, 0], [80, 32, 86], [255, 246, 187], [154, 127, 25],[31, 18, 27]],
      map_type: @maptype,
      url: @url <> "post/117849683385/concierge-and-how-long-will-you-be-staying-with"},
    :moonrise6 => %Palette{name: "Moonrise6",
      colors: [[191, 81, 61], [201, 162, 150], [197, 193, 136], [123, 177, 145],[217, 174, 48]],
      map_type: @maptype,
      url: @url <> "post/118877161325/sam-im-not-that-strong-of-a-swimmer-so-i-wear-a"},
    :grandbudapest5 => %Palette{name: "GrandBudapest5",
      colors: [[225, 146, 131], [140, 27, 76], [209, 147, 54], [231, 199, 190],[51, 12, 0]],
      map_type: @maptype,
      url: @url <> "post/122169507295/m-gustave-its-quite-a-thing-winning-the-loyalty"},
    :aquatic2 => %Palette{name: "Aquatic2",
      colors: [[139, 156, 184], [233, 229, 65], [88, 159, 194], [160, 141, 94],[189, 185, 206]],
      map_type: @maptype,
      url: @url <> "post/125170837755/steve-zissou-please-dont-make-fun-of-me-i-just"},
    :royal3 => %Palette{name: "Royal3",
      colors: [[252, 87, 108], [237, 126, 83], [226, 153, 139], [46, 23, 24],[251, 214, 202]],
      map_type: @maptype,
      url: @url <> "post/129921576355/royal-ive-always-been-considered-an-asshole-for"},
    :moonrise7 => %Palette{name: "Moonrise7",
      colors: [[35, 35, 85], [97, 104, 96], [167, 91, 68], [145, 43, 41],[255, 227, 143]],
      map_type: @maptype,
      url: @url <> "post/137096576550/social-services-access-denied"},
    :aquatic3 => %Palette{name: "Aquatic3",
      colors: [[214, 161, 66], [194, 128, 114], [200, 183, 161], [189, 68, 45],[100, 84, 60]],
      map_type: @maptype,
      url: @url <> "post/139482629630/ah-weve-never-made-great-husbands-have-we-of"},
    :darjeeling3 => %Palette{name: "Darjeeling3",
      colors: [[168, 171, 80], [255, 232, 61], [169, 211, 210], [36, 71, 125],[90, 145, 124]],
      map_type: @maptype,
      url: @url <> "post/143938510215/the-chief-steward-welcome-aboard"},
    :darjeeling4 => %Palette{name: "Darjeeling4",
      colors: [[116, 103, 104], [104, 71, 98], [128, 8, 6], [188, 132, 14],[174, 89, 92]],
      map_type: @maptype,
      url: @url <> "post/160334044570/i-wonder-if-the-three-of-us-wouldve-been-friends"},
    :isleofdogs1 => %Palette{name: "IsleOfDogs1",
      colors: [[254, 197, 175], [174, 126, 113], [210, 103, 50], [50, 35, 35],[24, 18, 19]],
      map_type: @maptype,
      url: @url <> "post/172304342835/were-a-pack-of-scary-indestructible-alpha-dogs"},
    :isleofdogs2 => %Palette{name: "IsleOfDogs2",
      colors: [[152, 108, 150], [138, 31, 31], [213, 171, 85], [14, 12, 12],[220, 194, 201], [130, 114, 108]],
      map_type: @maptype,
      url: @url <> "post/172586941620/be-advised-that-small-dogs-still-pose-a-threat-to"},
    :isleofdogs3 => %Palette{name: "IsleOfDogs3",
      colors: [[229, 142, 167], [224, 193, 160], [30, 18, 99], [216, 177, 72]],
      map_type: @maptype,
      url: @url <> "post/184134532240/tracy-walker-that-crook-hes-stealing-the"},
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
  @spec palette(atom()) :: Palette.t()
  def palette(palette_name) do
    Map.get(@palettes, palette_name)
  end


end
