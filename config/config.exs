# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :issue520example, Issue520exampleWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "KEi2EccK6O+kwt5HJFSYpo44Zy84UFXp9ku+0CN/5VT/BK79OdmXZHGTTe4hWpdT",
  render_errors: [view: Issue520exampleWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Issue520example.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [
    signing_salt: "SECRET_SALT"
  ]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
