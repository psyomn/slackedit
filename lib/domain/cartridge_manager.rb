require 'singleton'

# Author :: Simon Symeonidis
# Maybe there's a better way to do this.
class CartridgeManager
  include Singleton

  # The name of the game. Includes extension. (eg game.cart)
  attr_accessor :game_name
  # Absolute file path to the sqlite3 db
  attr_accessor :absolute_file_path
  # A short and sweet description of the game
  attr_accessor :game_description
  # TODO not used yet
  attr_accessor :authors
end

