require 'datasource/db_registry.rb'
# Author :: Simon Symeonidis
# Make the entity table
class MakeEntityTable
  # Make the entity table. 
  # NOTE: Primary key field makes sure that each entry, the key
  # autoincrements with each insertion.
  def self.now
    DbRegistry.instance.execute("CREATE TABLE entities ("\
      "id INTEGER, current_hitpoints INTEGER, "\
      "max_hitpoints INTEGER, current_magic_power INTEGER,"\
      "max_magic_power INTEGER, "\
      "strength INTEGER, stamina INTEGER, agility INTEGER, "\
      "defense INTEGER, unused_skillpoints INTEGER,"\
      "name VARCHAR(50), PRIMARY KEY(id))")
  end
end
