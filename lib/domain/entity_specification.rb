# Author :: Simon Symeonidis
# Organic specification (data factory for entities in game)
class OrganicSpecification
  
  attr_accessor :id

  attr_accessor :current_hitpoints, :max_hitpoints,
                :current_magic_power, :max_magic_power,
                :strength, :stamina, :agility, :defense,
                :unused_skillpoints, :status, :name
end
