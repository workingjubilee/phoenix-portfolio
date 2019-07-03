defmodule Jubileedotdev.Repo.Migrations.CreateExplainers do
  use Ecto.Migration

  def change do
    create table(:explainers) do
      add :uri, :string
      add :author, :string
      add :title, :string
      add :body, :text

      timestamps()
    end

  create unique_index(:explainers, [:uri])

  end
end
