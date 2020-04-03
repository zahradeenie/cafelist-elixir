defmodule CafelistWeb.PageController do
  use CafelistWeb, :controller

  import Ecto.Query

  def index(conn, params) do
    tag =
      Map.get(params, "tag")

    cafes =
      case tag do
        nil ->
          Cafelist.Cafe

        tag ->
          Cafelist.Cafe
          |> where([c], ^tag in c.tags)
      end
      |> Cafelist.Repo.all()

    conn
    |> assign(:cafes, cafes)
    |> assign(:current_tag, tag)
    |> assign(:tags, ~w(barcelona london))
    |> render("index.html")
  end
end



