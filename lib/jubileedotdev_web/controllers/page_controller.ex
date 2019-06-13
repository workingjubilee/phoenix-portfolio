defmodule JubileedotdevWeb.PageController do
  use JubileedotdevWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
