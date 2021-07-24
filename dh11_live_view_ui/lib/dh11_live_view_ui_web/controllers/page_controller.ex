defmodule Dh11LiveViewUiWeb.PageController do
  use Dh11LiveViewUiWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
