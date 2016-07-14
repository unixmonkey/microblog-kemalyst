require "kemalyst-model/adapter/pg"

class Blargh < Kemalyst::Model
  adapter pg

  sql_mapping({
    post: ["VARCHAR UNIQUE NOT NULL", String]
  })
end
