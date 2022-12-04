defmodule Palette do
  @derive {Inspect, only: [:name, :map_type, :number]}


  @type t :: %__MODULE__{name: String.t(), map_type: atom(), number: integer(), colors: List.t(), url: String.t()}
  @enforce_keys [:name, :map_type, :colors]
  defstruct [name: "", map_type: :sequential, number: 0, colors: [], url: ""]

  defimpl PaletteProtocol, for: Palette do
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
      Enum.map(palette.colors, fn color -> Utils.to_hex(color) end)
    end

    @spec float_colors(Palette.t()) :: list(list(float()))
    def float_colors(palette) do
      Enum.map(palette.colors, fn color -> Utils.rgb_tofloat(color) end)
    end
  end

  defimpl String.Chars, for: Palette do
    @spec to_string(Palette.t()) :: String.t()
    def to_string(palette) do
      "<Palette>: name: #{palette.name}, num_colors: #{PaletteProtocol.num_colors(palette)}, type: #{palette.map_type}, url: #{palette.url}"
    end
  end

end
