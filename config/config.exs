# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :cafelist,
  ecto_repos: [Cafelist.Repo]

# Configures the endpoint
config :cafelist, CafelistWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "dtArN/yAtb0Kxsdam00U2sLH/zBZVUl37Xg/AwwwDSxNErCpZ49MU5Bvn7qMkkT5",
  render_errors: [view: CafelistWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Cafelist.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "ZYyq5gzi"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
