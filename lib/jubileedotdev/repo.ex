defmodule Jubileedotdev.Repo do
  use Ecto.Repo,
    otp_app: :jubileedotdev,
    adapter: Ecto.Adapters.Postgres
end
