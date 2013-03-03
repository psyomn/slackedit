require 'datasource/db_registry.rb'
class MakeInfoTable
  # Make game info table
  def self.now
    DbRegistry.instance.execute("CREATE TABLE infos ("\
      "property VARCHAR(100), value TEXT)")
  end
end
