defmodule JubileedotdevWeb.Router do
  use JubileedotdevWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", JubileedotdevWeb do
    pipe_through :browser

    get "/", PageController, :index
    # Okay, so if someone does a get, we use PageController right here
    # and then we reference the atom :index, over in jubileedotdev_web/controllers
    # and find it is defined as a function!!
    # and it renders index.html!
    # this is a macro that expands HTTP verbs like get or post into this
  end

  scope "/projects", JubileedotdevWeb do
    pipe_through :browser

    get "/projects", PageController, :projects
  end

  scope "/explainer", JubileedotdevWeb do
    pipe_through :browser

    get "/explainer", PageController, :explainer
  end

  # Other scopes may use custom stacks.
  # scope "/api", JubileedotdevWeb do
  #   pipe_through :api
  # end
end
