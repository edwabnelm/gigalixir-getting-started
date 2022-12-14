use Mix.Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :gigalixir_getting_started, GigalixirGettingStarted.Repo,
  username: "postgres",
  password: "postgres",
  database: "gigalixir_getting_started_test#{System.get_env("MIX_TEST_PARTITION")}",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :gigalixir_getting_started, GigalixirGettingStartedWeb.Endpoint,
  http: [port: 4003],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn
