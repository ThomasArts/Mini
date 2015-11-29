defmodule Mini.Mixfile do
  use Mix.Project

  def project do
    [app: :mini,
     version: "0.0.1",
     elixir: ">= 1.1.0",
     test_pattern: "*_{test,eqc}.exs",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  def application do
    [applications: [:logger]]
  end

  defp deps do
    [ {:eqc_ex, "~> 1.2.4"} ]
  end

  # And set the environment variable ERL_LIBS to PATH_OF QuickCheck Mini

end
