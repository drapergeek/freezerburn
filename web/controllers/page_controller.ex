defmodule Freezerburn.PageController do
  use Freezerburn.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
