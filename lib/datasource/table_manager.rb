require 'datasource/commands/make_entity_table.rb'
require 'datasource/commands/make_item_specification_table.rb'
require 'datasource/commands/make_room_table.rb'
require 'datasource/commands/make_game_info_table.rb'

# Author :: Simon Symeonidis 
# The table manager which is responsible for creating and 
# updating the schema of the currently opened game file.
class TableManager

  def self.run
  end

  def self.make_new_cartridge(name)
    MakeEntityTable.now
    MakeItemSpecificationTable.now
    MakeRoomTable.now
    MakeGameInfoTable.now
  end
end
