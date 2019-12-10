defmodule Issue520exampleWeb.Page2Live do
  use Phoenix.LiveView
  require Logger

  def render(assigns) do
    ~L"""
    <p>UTF8 string link worked!</p>

    <% live_link "Back", to: "/" %>
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
