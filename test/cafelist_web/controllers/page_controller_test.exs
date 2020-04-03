defmodule CafelistWeb.PageControllerTest do
  use CafelistWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get(conn, "/")
    assert html_response(conn, 200) =~ "Cafelist"
  end
end
