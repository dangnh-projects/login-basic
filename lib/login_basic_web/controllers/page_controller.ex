defmodule LoginBasicWeb.PageController do
  use LoginBasicWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
