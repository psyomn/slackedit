require 'singleton'

# Author :: Simon Symeonidis
# Maybe there's a better way to do this.
class CartridgeManager
  include Singleton

  attr_accessor :game_name
  attr_accessor :game_description
  attr_accessor :authors
end

