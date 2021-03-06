defmodule JubileedotdevWeb do
  @moduledoc """
  Jubilee's Note:

  other files refer to this one with commands like:
    use JubileedotdevWeb, :view
  which invokes the macro defined at the bottom
    defmacro __using__
  and then references the atom
    :view
  which happens to be defined as a function here
  to put them both together.

  The entrypoint for defining your web interface, such
  as controllers, views, channels and so on.

  This can be used in your application as:

      use JubileedotdevWeb, :controller
      use JubileedotdevWeb, :view

  The definitions below will be executed for every view,
  controller, etc, so keep them short and clean, focused
  on imports, uses and aliases.

  Do NOT define functions inside the quoted expressions
  below. Instead, define any helper function in modules
  and import those modules here.
  """

  def controller do
    quote do
      use Phoenix.Controller, namespace: JubileedotdevWeb

      import Plug.Conn
      import JubileedotdevWeb.Gettext
      alias JubileedotdevWeb.Router.Helpers, as: Routes
    end
  end

  def view do
    quote do
    # https://hexdocs.pm/phoenix/Phoenix.View.html
    # I believe this macro expands everything inside the folder
    # into means of constructing renderable html, at least.
      use Phoenix.View,
        root: "lib/jubileedotdev_web/templates",
        namespace: JubileedotdevWeb

      # Import convenience functions from controllers
      import Phoenix.Controller, only: [get_flash: 1, get_flash: 2, view_module: 1]

      # Use all HTML functionality (forms, tags, etc)
      use Phoenix.HTML

      import JubileedotdevWeb.ErrorHelpers
      import JubileedotdevWeb.Gettext
      alias JubileedotdevWeb.Router.Helpers, as: Routes
    end
  end

  def router do
    quote do
      use Phoenix.Router
      import Plug.Conn
      import Phoenix.Controller
    end
  end

  def channel do
    quote do
      use Phoenix.Channel
      import JubileedotdevWeb.Gettext
    end
  end

  @doc """
  When used, dispatch to the appropriate controller/view/etc.
  """
  defmacro __using__(which) when is_atom(which) do
    apply(__MODULE__, which, [])
  end
end
