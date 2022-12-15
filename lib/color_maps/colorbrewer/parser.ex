
defmodule ColorMaps.Colorbrewer.Parser do
  # get data
  # https://colorbrewer2.org/export/colorbrewer.json
  @jsondata Path.join(__DIR__, "colorbrewer.json")

  if Code.ensure_loaded?(Download) do
    def download_json(url \\ "https://colorbrewer2.org/export/colorbrewer.json",
      file \\ @jsondata) do
        Download.from(url, [path: file])
    end
  end

  @spec parse_json( String.t() ) :: %{atom => Palette.t()}
  def parse_json(file \\ @jsondata) do
    map_types = %{"seq" => :sequential, "div" => :diverging, "qual" => :qualitative}
    json_data = Jason.decode!(File.read!(file))
    data = Enum.reduce(json_data, [], fn {palette_name, palette_data}, acc_list ->
      {type, sub_palettes} = Map.pop(palette_data, "type", "seq")
      map_type = map_types[type]
      palettes = Enum.reduce(sub_palettes, %{}, fn {sub_key, colors}, acc_pal ->
        sub_palette_name = palette_name <> sub_key
        palette_key = String.to_atom(String.downcase(sub_palette_name))
        Map.put(acc_pal, palette_key,
          %Palette{name: sub_palette_name,
            map_type: map_type,
            colors: Enum.map(colors, fn color -> Color.to_rgblist(Color.Parser.parse!(color)) end),
            number: length(colors)})
      end)
      [palettes | acc_list]
    end) |> Enum.reduce(fn x, y -> Map.merge(x, y, fn _k, v1, v2 -> v2 ++ v1 end) #merge maps
   end)
  data
  end
end
