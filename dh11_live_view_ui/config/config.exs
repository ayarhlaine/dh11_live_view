# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :dh11_live_view_ui, Dh11LiveViewUiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "mCYswYAIj0pnW3w5oMGeV1pHVPgaRtbFQRVzaR+Za+vZ01v3eymSehI+zxAcFf+3",
  render_errors: [view: Dh11LiveViewUiWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Dh11LiveViewUi.PubSub,
  live_view: [signing_salt: "jlq2zgMj"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
