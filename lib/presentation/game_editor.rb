require 'slackedit/version.rb'
require 'Qt4'

# Editor widgets go here
require 'presentation/widgets/entity_widget.rb'
require 'presentation/widgets/room_widget.rb'

# Author :: Simon Symeonidis
# Licence :: GPL v3.0
# The main editor 
class GameEditor < Qt::Dialog

  # Default initialization 
  def initialize(parent=nil,game_name)
    super(parent)

    init_widgets

    @game_name = game_name
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
