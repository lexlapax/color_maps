defmodule Palette do
  @derive {Inspect, only: [:name, :map_type, :number]}


  @type t :: %__MODULE__{name: String.t(), map_type: atom(), number: integer(), colors: List.t(), url: String.t()}
  @enforce_keys [:name, :map_type, :colors]
  defstruct [name: "", map_type: :sequential, number: 0, colors: [], url: ""]

  #defimpl Palettable, for: Palette do
    @spec name(Palette.t()) :: String.t()
    def name(palette) do
      palette.name
    end
    @spec map_type(Palette.t()) :: atom()
    def map_type(palette) do
      palette.map_type
    end

    @spec num_colors(Palette.t()) :: integer()
    def num_colors(palette) do
      if palette.number > 0, do: palette.number, else: length(palette.colors)
    end

    @spec colors(Palette.t()) :: list(list(integer()))
    def colors(palette) do
      palette.colors
    end

    @spec hex_colors(Palette.t()) :: list(String.t())
    def hex_colors(palette) do
      Enum.map(palette.colors, fn [r,g,b] -> "##{Color.to_hex(r)}#{Color.to_hex(g)}#{Color.to_hex(b)}" end)
    end

    @spec float_colors(Palette.t()) :: list(list(float()))
    def float_colors(palette) do
      Enum.map(palette.colors, fn [r,g,b] -> [r/255,g/255,b/255] end)
    end
  #end

  defimpl String.Chars, for: Palette do
    @spec to_string(Palette.t()) :: String.t()
    def to_string(palette) do
      "<Palette>: name: #{palette.name}, num_colors: #{Palette.num_colors(palette)}, type: #{palette.map_type}, url: #{palette.url}"
    end
  end

  if Code.ensure_loaded?(Kino.Render) and Code.ensure_loaded?(Image) do
    defimpl Kino.Render do
      @spec to_livebook(Palette.t()) :: Kino.Output.t()
      def to_livebook(palette) do
        Kino.Inspect.new({"Image", Palette.show_discrete_image(palette)})
        |> Kino.Render.to_livebook()
      end

    end

    @spec show_discrete_image(Palette.t(), integer(), integer()) :: Kino.Image.t()
    def show_discrete_image(palette, width \\ 512, height \\ 64) do
      colors = Palette.colors(palette)
      num_colors = length(colors)
      rect_w = div(width,num_colors)
      full_w = num_colors * rect_w
      img_blocks = Enum.reduce(colors, [], fn [r,g,b], acc ->
        img = Image.new!(rect_w, height, color: [r, g, b])
        [img | acc]
      end) |> Enum.reverse()
      img = Image.new!(full_w, height, color: :white)
      complist = Enum.reduce(img_blocks, [], fn img_block, acc ->
        # comp_tuple = {img_block, [dx: 1, y_baseline: :top, dy: 0]}
        comp_tuple =
          case acc do
            [] ->
              {img_block, [x: 0, y: 0]}
            _ ->
              [{_, last_pos} | _] = acc
              {img_block, [x: last_pos[:x] + rect_w, y: 0]}
          end
        # [{img_block, dx: 1, y_baseline: :top, dy: 0} | acc ]
        [comp_tuple | acc ]
      end )  |> Enum.reverse()
      img = Image.compose!(img, complist, blend_mode: :clear, x: :left, y: :top)
      vix_kino_show(img)
    end

    @spec vix_kino_show(Vix.Vips.Image.t()) :: Kino.Image.t()
    def vix_kino_show(vix_img) do
      vix_img_bin = Image.write!(vix_img, :memory, suffix: ".png")
      Kino.Image.new(vix_img_bin, "image/png")
    end
  end
end
