defmodule AppTwitter.MixProject do
  use Mix.Project

  def project do
    [
      app: :app_twitter,
      version: "0.1.0",
      elixir: "~> 1.8",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :quantum, :extwitter],
      mod: {AppTwitter.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:credo, "~> 1.0"},
      {:quantum, "~> 2.2"},
      {:extwitter, "~>0.9.3"}
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
    ]
  end
end
