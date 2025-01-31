defmodule DockerEngineAPI.Mixfile do
  use Mix.Project

  def project do
    [
      app: :elixir_dea,
      version: "1.45.7",
      elixir: "~> 1.18",
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      package: package(),
      description: """
      The Engine API is an HTTP API served by Docker Engine. It is the API the Docker client uses to communicate with the Engine, so everything the Docker client can do can be done with the API.
      """,
      deps: deps()
    ]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    # Specify extra applications you'll use from Erlang/Elixir
    [extra_applications: [:logger]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:my_dep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:my_dep, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.3.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:tesla, "~> 1.11"},
      {:jason, "~> 1.4"},
      {:ex_doc, "~> 0.34.1", only: :dev, runtime: false},
      {:dialyxir, "~> 1.4", only: [:dev, :test], runtime: false}
    ]
  end

  defp package do
    [
      name: "elixir_dea",
      source_url: "https://github.com/c2bw/elixir-dea",
      files: ~w(.formatter.exs lib mix.exs README* LICENSE*),
      links: %{
        "GitHub" => "https://github.com/c2bw/elixir-dea"
      },
      licenses: ["MIT"]
    ]
  end
end
