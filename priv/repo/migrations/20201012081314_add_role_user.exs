defmodule LoginBasic.Repo.Migrations.AddRoleUser do
  use Ecto.Migration

  def change do
    alter table(:users) do
      add :role, :string
    end
  end
end
