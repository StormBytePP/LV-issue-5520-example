defmodule Issue520exampleWeb.PageController do
  use Issue520exampleWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
