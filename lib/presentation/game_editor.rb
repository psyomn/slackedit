require 'slackedit/version.rb'
require 'Qt4'

# Editor widgets go here
require 'domain/cartridge_manager.rb'
require 'presentation/widgets/entity_widget.rb'
require 'presentation/widgets/room_widget.rb'
require 'presentation/widgets/item_widget.rb'

# Author :: Simon Symeonidis
# Licence :: GPL v3.0
# The main editor 
class GameEditor < Qt::Dialog

  # Default initialization 
  def initialize(parent=nil)
    super(parent)

    init_widgets

    @game_name = CartridgeManager.instance.game_name
    vbox       = Qt::VBoxLayout.new()
    vbox.addWidget(@tabs)

    setLayout(vbox)
    setWindowTitle("#{@game_name} | #{Slackedit::NAME}-#{Slackedit::VERSION}")
  end

private 

  # Init the required widgets
  def init_widgets
    make_tabs
  end

  def make_tabs
    @tabs = Qt::TabWidget.new
    @tabs.addTab(EntityWidget.new, "Entities")
    @tabs.addTab(RoomWidget.new, "Room Editor")
    @tabs.addTab(ItemWidget.new, "Item Specifications")
  end
  
  attr :tabs

end
