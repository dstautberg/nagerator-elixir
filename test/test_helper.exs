ExUnit.start

Mix.Task.run "ecto.create", ~w(-r NageratorElixir.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r NageratorElixir.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(NageratorElixir.Repo)

