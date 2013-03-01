require 'Qt4'

# Author :: Simon Symeonidis
# This is the room editor for the game 
class RoomWidget < Qt::Widget
  def initialize
    super
    @room_gridview = Qt::TableWidget.new
    @entity_list = Qt::ListView.new
    @link_button = Qt::PushButton.new(tr("Link Entity"))
    @wall_button = Qt::PushButton.new(tr("Wall"))
    @entity_button = Qt::PushButton.new(tr("Entity"))
    left_vbox = Qt::VBoxLayout.new
    right_vbox = Qt::VBoxLayout.new
    hbox_all = Qt::HBoxLayout.new
    hbox_buttons = Qt::HBoxLayout.new
    
    p left_vbox
    p right_vbox
    p hbox_all
    p hbox_buttons
    
    hbox_buttons.addWidget(@wall_button)
    hbox_buttons.addWidget(@entity_button)
    left_vbox.addWidget(@room_gridview)
    left_vbox.addLayout(hbox_buttons)
    right_vbox.addWidget(@entity_list)
    right_vbox.addWidget(@link_button)

    hbox_all.addLayout(left_vbox)
    hbox_all.addLayout(right_vbox)
    setLayout(hbox_all)
  end
end
