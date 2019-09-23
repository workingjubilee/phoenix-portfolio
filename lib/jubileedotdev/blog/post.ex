defmodule Jubileedotdev.Blog.Post do
  use Ecto.Schema
  import Ecto.Changeset

  schema "posts" do
    field :content, :string
    field :created, :utc_datetime
    field :title, :string
    field :updated, :utc_datetime

    timestamps()
  end

  @doc false
  def changeset(post, attrs) do
    post
    |> cast(attrs, [:title, :content, :created, :updated])
    |> validate_required([:title, :content, :created, :updated])
  end
end
