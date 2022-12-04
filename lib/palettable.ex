defprotocol Palettable do
  @doc "Returns the name of the palette."
  @spec name(t) :: String.t()|atom()
  def name(t)

  @doc "Returns the type of the palette, one of diverging, qualitative, sequential, cyclic, miscellaneous."
  @spec map_type(t) :: atom()
  def map_type(t)

  @doc "Returns The number of defined colors in the palette."
  @spec num_colors(t) :: integer()
  def num_colors(t)

  @doc "Returns The defined colors in the palette as a list of RGB tuples in the range 0-255."
  @spec colors(t) :: list(list(integer()))
  def colors(t)

  @doc "Returns Colors as a list of hex strings (e.g. '#A912F4')."
  @spec hex_colors(t) :: list(String.t())
  def hex_colors(t)

  @doc "Returns Colors as a list of RGB tuples in the range 0-1 as used by matplotlib"
  @spec float_colors(t) :: list(list(float()))
  def float_colors(t)

end
