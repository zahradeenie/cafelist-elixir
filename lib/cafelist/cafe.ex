defmodule Cafelist.Cafe do
  use Ecto.Schema
  import Ecto.Changeset

  schema "cafes" do
    field :image, :string
    field :images, {:array, :string}
    field :name, :string
    field :description, :string
    field :tags, {:array, :string}

    timestamps()
  end

  @doc false
  def changeset(cafe, attrs) do
    cafe
    |> cast(attrs, [:name, :image, :tags])
    |> validate_required([:name, :image, :tags])
  end
end
