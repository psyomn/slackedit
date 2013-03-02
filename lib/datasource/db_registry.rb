require 'sqlite3'
require 'singleton'

require 'domain/cartridge_manager.rb'

# Author :: Simon Symeonidis
# License :: GPL v3.0
# The database registry for db access, etc.
class DbRegistry

  include Singleton

  # Create the db handle
  def initialize
    @handle = SQLite3::Database.new(
      [CartridgeManager.instance.absolute_file_path,
      CartridgeManager.instance.game_name].join(File::SEPARATOR))
  end

  # Execute SQL queries with this method
  def execute(*sql)
    @handle.execute(*sql)
  end

  attr :handle, :db_name

end

