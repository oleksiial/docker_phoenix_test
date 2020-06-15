# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :hello_phoenix,
  ecto_repos: [HelloPhoenix.Repo]

# Configures the endpoint
config :hello_phoenix, HelloPhoenixWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "J8yOIqPpnlQZ1E0+TDQJ8V5xbmuInJoRU5YuL1u6Ml+WEhjt2AwHuKtBPyUqxPyB",
  render_errors: [view: HelloPhoenixWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: HelloPhoenix.PubSub,
  live_view: [signing_salt: "XLvCa6rG"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
