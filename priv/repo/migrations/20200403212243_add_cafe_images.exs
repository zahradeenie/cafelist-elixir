defmodule Cafelist.Repo.Migrations.AddCafeImages do
  use Ecto.Migration

  def change do
    alter table(:cafes) do
      add :images, {:array, :string}
    end
  end
end
