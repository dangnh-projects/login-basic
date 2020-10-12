# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :login_basic,
  ecto_repos: [LoginBasic.Repo]

# Configures the endpoint
config :login_basic, LoginBasicWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "0/30E1RNooxgDWi47GwfYDU5UlbIdtVji9yKTHehH+UYeEhDO0azGRuGoH/X/tPV",
  render_errors: [view: LoginBasicWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: LoginBasic.PubSub,
  live_view: [signing_salt: "utVTZXY7"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"

config :login_basic, :pow,
  user: LoginBasic.Users.User,
  repo: LoginBasic.Repo,
  web_module: LoginBasicWeb,
  extensions: [PowResetPassword, PowEmailConfirmation],
  controller_callbacks: Pow.Extension.Phoenix.ControllerCallbacks,
  mailer_backend: LoginBasicWeb.Pow.Mailer
