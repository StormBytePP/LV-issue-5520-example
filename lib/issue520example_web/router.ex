defmodule Issue520exampleWeb.Router do
  use Issue520exampleWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug Phoenix.LiveView.Flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  scope "/", Issue520exampleWeb do
    pipe_through :browser

    live "/", PageLive
    live "/пример", Page2Live
  end
end
