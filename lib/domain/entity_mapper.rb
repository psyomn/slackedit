require 'datasource/db_registry.rb'
# Author :: Simon Symeonidis
# NOTE: this is a mapper that lies in between the domain layer and the 
# datasource layer, as suggested by larman. Maybe in the future this could
# be separated along with a TDG to obtain more abstraction (though thinking
# about this I don't see a point)
class EntityMapper

  def self.insert(entity)
    DbRegistry.instance.execute(@@insert,
      entity.name, entity.max_hitpoints, entity.max_magic_power,
      entity.strength, entity.stamina, entity.agility, entity.defense,
      entity.unused_skillpoints, entity.current_hitpoints)
    entity.id = \
    DbRegistry.instance
              .execute("SELECT last_insert_rowid()")
              .flatten[0]
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
  def self.find_all
    entity_arr = Array.new 
    DbRegistry.instance.execute(@@select_all).each do |row|
      entity = EntitySpecification.new 
      entity.id = row[0]
      entity.current_hitpoints = row[1]
      entity.max_hitpoints = row[2]
      entity.current_magic_power = row[3]
      entity.max_magic_power = row[4]
      entity.strength = row[5]
      entity.stamina = row[6]
      entity.agility = row[7]
      entity.defense = row[8]
      entity.unused_skillpoints = row[9]
      entity.name = row[10]
      entity_arr.push entity
    end
    entity_arr
  end

  def self.max_id()
    
  end

  @@tname  = "entities"
  @@insert = "INSERT INTO #{@@tname} (name,max_hitpoints,max_magic_power,"\
             "strength,stamina,agility,defense,unused_skillpoints,"\
             "current_hitpoints) values "\
             "(?,?,?,?,?,?,?,?,?);"
  @@update = ""
  @@delete = ""
  @@select_where = ""
  @@select_all = "SELECT * FROM entities"

end 

