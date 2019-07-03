defmodule Jubileedotdev.Explainer do
  use Ecto.Schema
  import Ecto.Changeset

  schema "explainers" do
    field :author, :string
    field :body, :string
    field :title, :string
    field :uri, :string

    timestamps()
  end

  @doc false
  def changeset(explainer, attrs) do
    explainer
    |> cast(attrs, [:uri, :author, :title, :body])
    |> validate_required([:uri, :author, :title, :body])
  end
end
