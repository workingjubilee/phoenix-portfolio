defmodule Jubileedotdev.Portfolio.Projects do
  use Ecto.Schema
  import Ecto.Changeset

  schema "project" do
    field :image, :string
    field :notes, :string
    field :title, :string
    field :uri, :string

    timestamps()
  end

  @doc false
  def changeset(projects, attrs) do
    projects
    |> cast(attrs, [:uri, :image, :title, :notes])
    |> validate_required([:uri, :image, :title, :notes])
  end
end