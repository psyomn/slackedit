require 'Qt4'

# Author :: Simon Symeonidis
# This is the room editor for the game 
class RoomWidget < Qt::Widget
  def initialize
    @room_gridview = Qt::TableWidget.new
    @entity_list = Qt::ListView.new
    @link_button = Qt::PushButton.new(tr("Link Entity"))
    @wall_button = Qt::ToggleButton.new(tr("Wall"))
    @entity_button = Qt::ToggleButton.new(tr("Entity"))
    left_vbox, right_vbox = [Qt::VBoxLayout.new] * 2
    hbox_buttons = Qt::HBoxLayout.new
    
    hbox_buttons.addWidget(@wall_button)
    hbox_buttons.addWidget(@entity_button)
    left_vbox.addWidget(@room_gridview)
    left_vbox.addLayout(hbox_buttons)
    right_vbox.addWidget(@entity_list)
    right_vbox.addWidget(@link_button)
  end
end
