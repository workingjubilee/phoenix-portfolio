defmodule Jubileedotdev.Repo.Migrations.CreatePosts do
  use Ecto.Migration

  def change do
    create table(:posts) do
      add :title, :string
      add :content, :text
      add :created, :utc_datetime
      add :updated, :utc_datetime

      timestamps()
    end

  end
end
