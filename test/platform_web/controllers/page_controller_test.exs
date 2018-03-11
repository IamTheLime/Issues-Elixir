defmodule PlatformWeb.PageControllerTest do
  use PlatformWeb.ConnCase

  test "redirect unauthenticated users away from index", %{conn: conn} do
    conn = get conn, "/"
    assert html_response(conn,302) =~ "redirect"
  end

end
