defmodule FirstApi.Repo do
  use Ecto.Repo,
    otp_app: :first__api,
    adapter: Ecto.Adapters.Postgres
end
