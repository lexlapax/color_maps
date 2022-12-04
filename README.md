# ColorMaps
An attempt at centralizing color maps in elixir , mostly for my use, in order not to use other binaries or libraries outside of the elixir/erlang ecosystem

*NOTE* 
This is certainly not idiomatic. It is part of my attempt to learn elixir, OTP, Nx etc.

Now experimenting with protocols and behaviours

Take a look at the following:
  1. https://colorbrewer2.org 
  1. https://matplotlib.org/stable/tutorials/colors/index.html 
  1. http://www.kennethmoreland.com/color-advice/ 
  1. https://github.com/jiffyclub/palettable 
  1. http://www.fabiocrameri.ch/colourmaps.php

A lot of this is taken from matplotlib colormaps implementation.

Currently just contains datasets in hashmaps in the form of RGB or hex values.

**TODO: Add description**

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `color_maps` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:color_maps, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at <https://hexdocs.pm/color_maps>.

