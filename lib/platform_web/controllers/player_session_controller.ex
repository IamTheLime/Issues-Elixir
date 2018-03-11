defmodule PlatformWeb.PlayerSessionController do
    use PlatformWeb, :controller

    def new(conn, _) do
        render conn, "new.html"
    end

    def create(conn, %{"session" => %{"username" => user, "password" => pass}}) do
        case PlatformWeb.PlayerAuthController.sign_in_with_username_and_password(conn, user, pass, repo: Platform.Repo) do
            {:ok, conn} ->
        end
    end

end