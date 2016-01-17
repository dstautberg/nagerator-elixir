defmodule NageratorElixir.PageController do
  use NageratorElixir.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
