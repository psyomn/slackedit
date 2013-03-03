require 'datasource/db_registry.rb'
class MakeGameInfoTable
  # Make game info table
  def self.now
    DbRegistry.instance.execute("CREATE TABLE properties ("\
      "id INTEGER PRIMARY KEY, property VARCHAR(100),"\
      "value VARCHAR(100))")
  end
end
