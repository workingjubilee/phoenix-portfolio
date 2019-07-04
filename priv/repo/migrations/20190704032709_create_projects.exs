defmodule Jubileedotdev.Repo.Migrations.CreateProjects do
  use Ecto.Migration

  def change do
    create table(:projects) do
      add :uri, :string
      add :image, :string
      add :title, :string
      add :notes, :text

      timestamps()
    end

    create unique_index(:projects, [:uri])

  end
end
