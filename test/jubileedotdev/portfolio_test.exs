defmodule Jubileedotdev.PortfolioTest do
  use Jubileedotdev.DataCase

  alias Jubileedotdev.Portfolio

  describe "projects" do
    alias Jubileedotdev.Portfolio.Project

    @valid_attrs %{image: "some image", notes: "some notes", title: "some title", uri: "some uri"}
    @update_attrs %{image: "some updated image", notes: "some updated notes", title: "some updated title", uri: "some updated uri"}
    @invalid_attrs %{image: nil, notes: nil, title: nil, uri: nil}

    def project_fixture(attrs \\ %{}) do
      {:ok, project} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Portfolio.create_project()

      project
    end

    test "list_projects/0 returns all projects" do
      project = project_fixture()
      assert Portfolio.list_projects() == [project]
    end

    test "get_project!/1 returns the project with given id" do
      project = project_fixture()
      assert Portfolio.get_project!(project.id) == project
    end

    test "create_project/1 with valid data creates a project" do
      assert {:ok, %Project{} = project} = Portfolio.create_project(@valid_attrs)
      assert project.image == "some image"
      assert project.notes == "some notes"
      assert project.title == "some title"
      assert project.uri == "some uri"
    end

    test "create_project/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Portfolio.create_project(@invalid_attrs)
    end

    test "update_project/2 with valid data updates the project" do
      project = project_fixture()
      assert {:ok, %Project{} = project} = Portfolio.update_project(project, @update_attrs)
      assert project.image == "some updated image"
      assert project.notes == "some updated notes"
      assert project.title == "some updated title"
      assert project.uri == "some updated uri"
    end

    test "update_project/2 with invalid data returns error changeset" do
      project = project_fixture()
      assert {:error, %Ecto.Changeset{}} = Portfolio.update_project(project, @invalid_attrs)
      assert project == Portfolio.get_project!(project.id)
    end

    test "delete_project/1 deletes the project" do
      project = project_fixture()
      assert {:ok, %Project{}} = Portfolio.delete_project(project)
      assert_raise Ecto.NoResultsError, fn -> Portfolio.get_project!(project.id) end
    end

    test "change_project/1 returns a project changeset" do
      project = project_fixture()
      assert %Ecto.Changeset{} = Portfolio.change_project(project)
    end
  end
end
