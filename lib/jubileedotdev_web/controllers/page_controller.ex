defmodule JubileedotdevWeb.PageController do
  use JubileedotdevWeb, :controller

  alias Jubileedotdev.Portfolio
  # alias Jubileedotdev.Portfolio.Project

  def index(conn, _params) do
    projects = Portfolio.list_projects()
    render(conn, "index.html", projects: projects)
  end

  def projects(conn, _params) do
    render(conn, "projects.html")
  end

  def explainer(conn, _params) do
    render(conn, "explainer.html")
  end
end
