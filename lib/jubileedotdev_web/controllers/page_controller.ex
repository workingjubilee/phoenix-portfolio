defmodule JubileedotdevWeb.PageController do
  use JubileedotdevWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def projects(conn, _params) do
    render(conn, "projects.html")
  end

  def explainer(conn, _params) do
    render(conn, "explainer.html")
  end
end
