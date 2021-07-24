defmodule Dh11LiveViewUiWeb.PageControllerTest do
  use Dh11LiveViewUiWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get(conn, "/")
    assert html_response(conn, 200) =~ "Welcome to Phoenix!"
  end
end
