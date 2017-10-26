# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :catchpet,
  ecto_repos: [Catchpet.Repo]

# Configures the endpoint
config :catchpet, Catchpet.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "+fueOviGOawDnvmns6tvil2xJShG7LcicIg+qRTUi9Tt3QinxXSc44zMrE24wYsP",
  render_errors: [view: Catchpet.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Catchpet.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
