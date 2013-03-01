require 'singleton'

# Author :: Simon Symeonidis
# Maybe there's a better way to do this.
class CartridgeManager
  include Singleton

  attr :game_name
  attr :game_description
  attr :authors
end

