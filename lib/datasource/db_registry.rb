require 'sqlite3'
require 'singleton'

# Author :: Simon Symeonidis
# License :: GPL v3.0
# The database registry for db access, etc.
class DbRegistry

  include Singleton

  # Create the db handle
  def initialize(game_name)
    @handle = SQLite3::Database.new(game_name)
    @db_name = game_name
  end

  # Execute SQL queries with this method
  def execute(sql)
    @handle.execute(sql)
  end

  attr :handle, :db_name

end

