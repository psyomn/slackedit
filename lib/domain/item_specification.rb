# Author :: Simon Symeonidis 
# License :: GPL v3.0
# Item active record
class ItemSpecification
  
  def is_key_item?
    @key_item
  end

  # Identity field for the item
  attr_accessor :id

  # Name of the item
  attr_accessor :name

  # Item description
  attr_accessor :description

  # Gold points value
  attr_accessor :gp_value

  # Whether it is a key item or not (t/f)
  attr_accessor :key_item

end
