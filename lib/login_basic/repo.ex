defmodule LoginBasic.Repo do
  use Ecto.Repo,
    otp_app: :login_basic,
    adapter: Ecto.Adapters.Postgres
end
