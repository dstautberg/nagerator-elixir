defmodule NageratorElixir.Todo do
  use NageratorElixir.Web, :model

  schema "todos" do
    field :name, :string
    field :description, :string
    field :repeat_count, :integer
    field :repeat_units, :string
    field :last_completed_at, Ecto.Date
    field :next_due_at, Ecto.Date
    field :repeat_based_on, :string

    timestamps
  end

  @required_fields ~w(name description repeat_count repeat_units last_completed_at next_due_at repeat_based_on)
  @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end
