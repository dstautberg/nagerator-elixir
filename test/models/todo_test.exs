defmodule NageratorElixir.TodoTest do
  use NageratorElixir.ModelCase

  alias NageratorElixir.Todo

  @valid_attrs %{description: "some content", last_completed_at: "2010-04-17", name: "some content", next_due_at: "2010-04-17", repeat_based_on: "some content", repeat_count: 42, repeat_units: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Todo.changeset(%Todo{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Todo.changeset(%Todo{}, @invalid_attrs)
    refute changeset.valid?
  end
end
