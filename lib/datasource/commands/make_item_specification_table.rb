require 'persistence/db_registry.rb'
# Author :: Simon Symeonidis
# Make the item specification table
class MakeItemSpecificationTable
  def self.now
    DbRegistry.instance.execute("CREATE TABLE item_specifications"\
      "id INTEGER, "\
      "name VARCHAR(40), description VARCHAR(400), gp_value INTEGER, "\
      "key_item INTEGER, PRIMARY KEY(id)")
  end
end
