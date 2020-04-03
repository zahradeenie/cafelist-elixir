defmodule Cafelist.Repo do
  use Ecto.Repo,
    otp_app: :cafelist,
    adapter: Ecto.Adapters.Postgres
end
