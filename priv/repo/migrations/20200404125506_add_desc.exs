defmodule Cafelist.Repo.Migrations.AddDesc do
  use Ecto.Migration

  def change do
    alter table(:cafes) do
      add :description, :text
    end
  end
end
