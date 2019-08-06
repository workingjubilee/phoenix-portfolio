defmodule Jubileedotdev.Project do
  use Ecto.Schema
  import Ecto.Changeset

@moduledoc '''Schema for portfolio projects...?
  WARNING POSSIBLE DUPLICATE'''

  schema "projects" do
    field :image, :string
    field :notes, :string
    field :repo, :string
    field :title, :string
    field :uri, :string

    timestamps()
  end

  @doc false
  def changeset(project, attrs) do
    project
    |> cast(attrs, [:uri, :repo, :image, :title, :notes])
    |> validate_required([:title])
  end
end
