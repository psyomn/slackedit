# Author :: Simon Symeonidis
# License :: Gpl v3.0
class Room
  
  # Identity field for room
  attr_accessor :id

  # Room data
  attr_accessor :room_data

  # Doors to other rooms
  attr_accessor :doors

  # Entities in this particular room
  attr_accessor :entities

end
