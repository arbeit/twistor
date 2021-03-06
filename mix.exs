defmodule Twistor.Mixfile do
  use Mix.Project

  def project do
    [app: :twistor,
     version: "0.0.1",
     elixir: "~> 1.3-dev",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger, :postgrex, :extwitter, :httpoison]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      { :httpoison, "~> 0.8" },
      { :poison, "~> 1.5" },
      { :extwitter, "~> 0.7.0" },
      { :postgrex, "~> 0.11.1" },
      { :oauth, github: "tim/erlang-oauth" }
    ]
  end
end
