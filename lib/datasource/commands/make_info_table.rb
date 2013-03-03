require 'datasource/db_registry.rb'
class MakeInfoTable
  # Make game info table
  def self.now
    DbRegistry.instance.execute("CREATE TABLE infos ("\
      "id INTEGER PRIMARY KEY, property VARCHAR(100),"\
      "value TEXT)")
  end
end
