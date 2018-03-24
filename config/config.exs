# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :mytems,
  ecto_repos: [Mytems.Repo]

# Configures the endpoint
config :mytems, MytemsWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "+a4o9SXNaPx4T+JBF8O8GCxNx/yMyqSwL81/Uh+5E07rinQytVwdmkycKRh2hGQe",
  render_errors: [view: MytemsWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Mytems.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
