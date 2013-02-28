require 'Qt4'

# Author :: Simon Symeonidis 
# The entity widget for the game editor. This is loaded and accessed as a tab
# along with all the other uis.
#
# TODO: this should have a list at a side of current entities, and the ui used
# to either edit the selected entity, or save a new one.
class EntityWidget < Qt::Widget

  # TODO Status missing (to set a status to the player eg. poisoned, sleep etc)
  # Default init, make ui
  def initialize
    super
    make_ui
  end

private 

  def make_ui
    @name_label = Qt::Label.new(tr("Name"))
    @name_ledit = Qt::LineEdit.new
    @max_hitpoints_ledit = Qt::LineEdit.new
    @max_hitpoints_label = Qt::Label.new(tr("Max hitpoints"))
    @max_magic_power_ledit = Qt::LineEdit.new
    @max_magic_power_label = Qt::Label.new(tr("Max Magic"))
    @strength_ledit = Qt::LineEdit.new
    @strength_label = Qt::Label.new(tr("Strength"))
    @stamina_ledit = Qt::LineEdit.new
    @stamina_label = Qt::Label.new(tr("Stamina"))
    @agility_ledit = Qt::LineEdit.new
    @agility_label = Qt::Label.new(tr("Agility"))
    @defense_ledit = Qt::LineEdit.new
    @defense_label = Qt::Label.new(tr("Defense"))
    @unused_skillpoints_ledit = Qt::LineEdit.new
    @unused_skillpoints_label = Qt::Label.new(tr("Unused Skillpoints"))
    @all_items_listview       = Qt::ListView.new
    @add_button = Qt::PushButton.new(tr("Add"))
    gbox        = Qt::GridLayout.new
    vbox        = Qt::VBoxLayout.new
    hbox        = Qt::HBoxLayout.new

    gbox.addWidget(@name_label, 0, 0)
    gbox.addWidget(@name_ledit, 0, 1)
    gbox.addWidget(@max_hitpoints_label, 1, 0)
    gbox.addWidget(@max_hitpoints_ledit, 1, 1)
    gbox.addWidget(@max_magic_power_label, 2, 0)
    gbox.addWidget(@max_magic_power_ledit, 2, 1)
    gbox.addWidget(@strength_label, 3, 0)
    gbox.addWidget(@strength_ledit, 3, 1)
    gbox.addWidget(@stamina_label, 4, 0)
    gbox.addWidget(@stamina_ledit, 4, 1)
    gbox.addWidget(@agility_label, 5, 0)
    gbox.addWidget(@agility_ledit, 5, 1)
    gbox.addWidget(@defense_label, 6, 0)
    gbox.addWidget(@defense_ledit, 6, 1)
    gbox.addWidget(@unused_skillpoints_label, 7, 0)
    gbox.addWidget(@unused_skillpoints_ledit, 7, 1)

    vbox.addLayout(gbox)
    vbox.addWidget(@add_button)

    hbox.addWidget(@all_items_listview)
    hbox.addLayout(vbox)

    setLayout(hbox)
  end

end
