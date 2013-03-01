require 'domain/entity_specification.rb'
require 'domain/entity_mapper.rb'
# Author :: Simon Symeonidis 
# This is the command that 1. is initialized when
# we want to create a new entity, 2. delegates data insert to a gateway 
# database. 
class CreateEntityCommand
  
  # Initialize the data
  def initialize(*entity_data)
    @entity = EntitySpecification.new
    @entity.id = entity_data[0].to_i 
    @entity.name = entity_data[1]
    @entity.max_hitpoints = entity_data[2].to_i
    @entity.max_magic_power = entity_data[3].to_i
    @entity.strength = entity_data[4].to_i
    @entity.stamina = entity_data[5].to_i
    @entity.agility = entity_data[6].to_i
    @entity.defense = entity_data[7].to_i
    @entity.unused_skillpoints = entity_data[8].to_i
    @entity.current_hitpoints = entity_data[9].to_i
  end

  # Run the command (and create the entity)
  def execute
    EntityMapper.insert(@entity)
  end

  attr :entity

end

