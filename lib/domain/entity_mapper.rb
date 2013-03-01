require 'datasource/db_registry.rb'
# Author :: Simon Symeonidis
# NOTE: this is a mapper that lies in between the domain layer and the 
# datasource layer, as suggested by larman. Maybe in the future this could
# be separated along with a TDG to obtain more abstraction (though thinking
# about this I don't see a point)

class EntityMapper

  def self.insert(entity)
    DbRegistry.execute(@@insert,
      entity.id, entity.name, entity.max_hitpoints, entity.max_magic_power,
      entity.strength, entity.stamina, entity.agility, entity.defense,
      entity.unused_skillpoints)
  end

  def self.update()
  end

  def self.delete()
  end

  # this is to find an entity with a specific
  # id 
  def self.find()
  end

  # this is used for the list in the ui
  def self.find_all()
  end

  @@insert = "INSERT INTO entities (id,name,max_hitpoints,max_magic_power,"\
             "strength,stamina,agility,defense,unused_skillpoints) values "\
             "(?,?,?,?,?,?,?,?);"
  @@update = ""
  @@delete = ""
  @@select_where = ""
  @@select_all = "SELECT * FROM entities"

end 

