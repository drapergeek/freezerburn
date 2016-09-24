defmodule Freezerburn.ItemTest do
  use Freezerburn.ModelCase

  alias Freezerburn.Item

  @valid_attrs %{name: "some content", quanity: 42}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Item.changeset(%Item{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Item.changeset(%Item{}, @invalid_attrs)
    refute changeset.valid?
  end
end
