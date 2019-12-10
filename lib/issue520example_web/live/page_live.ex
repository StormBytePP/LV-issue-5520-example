defmodule Issue520exampleWeb.PageLive do
  use Phoenix.LiveView
  require Logger
  alias Issue520exampleWeb.Router.Helpers, as: Routes

  def render(assigns) do
    ~L"""
    <p>Current routes:
      <img src="<%= Routes.static_path(@socket, "/images/routes.png") %>" alt="Routes"/>
    </p>
    <p><%= live_link "Link to russian URI", to: "/пример" %> is currently broken on LiveView as it contains UTF8 characters in the URI</p>
    <p>Furthermore, as it is a live route, trying to enter directly in browser by typing <strong>/пример</strong> in the address bar, will display that page, but will loop trying to connect to live socket that will never happen as of the mentioned bug</p>

    """
  end

  def handle_params(_arg1, uri, %Phoenix.LiveView.Socket{} = socket) do
    Logger.debug "Handled URI #{uri}"
    {
      :noreply,
      socket
    }
  end
end
