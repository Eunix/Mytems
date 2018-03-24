use Mix.Config

# In this file, we keep production configuration that
# you'll likely want to automate and keep away from
# your version control system.
#
# You should document the content of this
# file or create a script for recreating it, since it's
# kept out of version control and might be hard to recover
# or recreate for your teammates (or yourself later on).
config :mytems, MytemsWeb.Endpoint,
  secret_key_base: "FQK8Iwo8PmDdPgXWlsqixGVHYzBc7Vg8e1M/jRN0ZG0EK4aeQCrL5qt0H+ap4D3H"

# Configure your database
config :mytems, Mytems.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "mytems_prod",
  pool_size: 15
