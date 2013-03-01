require 'domain/entity_specification.rb'
require 'domain/entity_mapper.rb'
# Author :: Simon Symeonidis 
# This is the command that 1. is initialized when
# we want to create a new entity, 2. delegates data insert to a gateway 
# database. 
class CreateEntityCommand
  
  # Initialize the data
  def initialize(*entity_data)
    @entity = Entity.new
    @entity.id = entity_data[0]
    @entity.name = entity_data[1]
    @entity.max_hitpoints = entity_data[2]
    @entity.max_magic_power = entity_data[3]
    @entity.strength = entity_data[4]
    @entity.stamina = entity_data[5]
    @entity.agility = entity_data[6]
    @entity.defense = entity_data[7]
    @entity.unused_skillpoints = entity_data[8]
  end

  # Run the command (and create the entity)
  def execute
    EntityMapper.insert(@entity)
  end

  attr :entity

end

