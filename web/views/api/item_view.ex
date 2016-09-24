defmodule Freezerburn.Api.ItemView do
  use Freezerburn.Web, :view

  def render("index.json", %{items: items}) do
    %{data: render_many(items, Freezerburn.Api.ItemView, "item.json")}
  end

  def render("show.json", %{item: item}) do
    %{data: render_one(item, Freezerburn.Api.ItemView, "item.json")}
  end

  def render("item.json", %{item: item}) do
    %{id: item.id,
      name: item.name,
      quanity: item.quanity}
  end
end
