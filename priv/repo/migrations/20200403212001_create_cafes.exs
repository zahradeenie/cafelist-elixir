defmodule Cafelist.Repo.Migrations.CreateCafes do
  use Ecto.Migration

  def change do
    create table(:cafes) do
      add :name, :string
      add :image, :string
      add :tags, {:array, :string}

      timestamps()
    end

  end
end
