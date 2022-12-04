defmodule ColormapBehaviour do
    @doc "Returns the name of the colormap collection."
    @callback name() :: atom()

    @doc "Returns the url of the colormap collection."
    @callback url() :: String.t()

    @doc "Returns a list of names of defined palettes"
    @callback palette_names() :: list(atom())

    @doc "Returns a list of names of defined palettes of given type"
    @callback palette_names(atom()) :: list(atom())

    @doc "Returns a list of names of defined palette types e.g. [:diverging, :sequential,:miscellaneous]"
    @callback palette_types() :: list(atom())

    @doc "Returns The defined palette named by name parameter"
    @callback palette(atom()) :: Palette.t()

end
