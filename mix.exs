defmodule UAParser.Mixfile do
  use Mix.Project

  @version "1.4.0"

  def project do
    [
      app: :ua_parser,
      description: "Parse user-agent strings with BrowserScope patterns",
      version: @version,
      elixir: "~> 1.4",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      package: package(),
      deps: deps()
    ]
  end

  def application do
    [extra_aplications: [:logger, :yamerl]]
  end

  defp deps do
    [
      {:yamerl, "~> 0.5"},

      # Development & Test dependencies
      {:credo, "~> 0.8", only: [:dev, :test]},
      {:ex_doc, ">= 0.0.0", only: :dev},
    ]
  end

  defp package do
    [
      maintainers: ["Sean Callan", "Bobby Grayson"],
      files: ["lib", "mix.exs", "README*", "LICENSE*", "priv"],
      licenses: ["Apache 2.0"],
      links: %{github: "https://github.com/doomspork/ua_parser"}
    ]
  end
end
