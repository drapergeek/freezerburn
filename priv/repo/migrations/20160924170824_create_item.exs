defmodule Freezerburn.Repo.Migrations.CreateItem do
  use Ecto.Migration

  def change do
    create table(:items) do
      add :name, :string
      add :quanity, :integer

      timestamps()
    end

  end
end
