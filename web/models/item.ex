defmodule Freezerburn.Item do
  use Freezerburn.Web, :model

  schema "items" do
    field :name, :string
    field :quanity, :integer

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :quanity])
    |> validate_required([:name, :quanity])
  end
end
