defmodule NageratorElixir.Repo.Migrations.CreateTodo do
  use Ecto.Migration

  def change do
    create table(:todos) do
      add :name, :string
      add :description, :string
      add :repeat_count, :integer
      add :repeat_units, :string
      add :last_completed_at, :date
      add :next_due_at, :date
      add :repeat_based_on, :string

      timestamps
    end

  end
end
