defmodule FirstApiWeb.PageController do
  use FirstApiWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
