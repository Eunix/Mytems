defmodule MytemsWeb.PageController do
  use MytemsWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
