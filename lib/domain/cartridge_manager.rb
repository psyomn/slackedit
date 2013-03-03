require 'Qt4' # Sacrificing coupling here...
require 'singleton'
require 'domain/info.rb'
require 'domain/entity_specification.rb'

# Author :: Simon Symeonidis
# License :: GPL v3.0
# Maybe there's a better way to do this.
# Almost like a facade between the presentation and domain layer
class CartridgeManager
  include Singleton

  def initialize
    @info = Info.new
    @entities = Qt::StandardItemModel.new
    @entities.appendRow(Qt::StandardItem.new("HERP DERP"))
  end

  def add_entity(entity)
    item = Qt::StandardItem.new("#{entity.id}, #{entity.name}")
    p @entities
  end

  # The filename of the game. Includes extension. (eg game.cart)
  # Don't confuse this with the IN-GAME name. This is here for 
  # tehcnical facilities, and general handling of filesystem.
  attr_accessor :game_name
  # Absolute file path to the sqlite3 db
  attr_accessor :absolute_file_path
  # A short and sweet description of the game
  attr_accessor :game_description
  # TODO not used yet
  attr_accessor :authors
  # INSIDE info of the game. This is an Info object.
  attr_accessor :info
  # The entities of the application
  attr_accessor :entities
end

