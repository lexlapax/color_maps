defmodule ColorMaps.MixProject do
  use Mix.Project

  def project do
    [
      app: :color_maps,
      version: "0.1.0",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:image, "~> 0.15.0"},
      #{:stb_image, "~> 0.6.0", optional: true},
      {:kino, "~> 0.8", optional: true},
      {:ex_doc, "~> 0.23", only: :docs, runtime: false},
      {:nx, "~> 0.4.1", optional: true},
      {:exla, "~> 0.4.1", optional: true},
      {:jason, "~> 1.4", optional: true },

      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
    ]
  end
end
