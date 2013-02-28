require 'Qt4'

# Author :: Simon Symeonidis
# Licence :: GPL v3.0
# The main editor 
class GameEditor < Qt::Dialog

  def initialize(parent=nil)
    super
    setWindowTitle(@game_name)
  end

  attr_accessor :game_name

end
