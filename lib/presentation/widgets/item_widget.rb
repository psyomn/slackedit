require 'Qt4' 

# Author :: Simon Symeonidis
# Widget for managing a single (in-game) item, its prorperties/effects
class ItemWidget < Qt::Widget

  def initialize
    super
    hbox = Qt::HBoxLayout.new
    vbox = Qt::VBoxLayout.new
    gbox = Qt::GridLayout.new
    @id_label = Qt::Label.new(tr("ID"))
    @id_ledit = Qt::LineEdit.new
    @items_label = Qt::Label.new(tr("Item List"))
    @items_listview = Qt::ListView.new
    @name_label = Qt::Label.new(tr("Name"))
    @name_ledit = Qt::LineEdit.new
    @description_label = Qt::Label.new(tr("Item Description"))
    @description_ledit = Qt::LineEdit.new
    @gp_value_label = Qt::Label.new(tr("GP Worth"))
    @gp_value_ledit = Qt::LineEdit.new
    @key_item_checkbox = Qt::Label.new(tr("Key Item"))
    @key_item_checkbox = Qt::CheckBox.new
    @add_button = Qt::PushButton.new(tr("Add"))
    @remove_button = Qt::PushButton.new(tr("Remove"))

    @id_ledit.setEnabled(false)

    gbox.addWidget(@id_label, 0, 0)
    gbox.addWidget(@id_ledit, 0, 1) 
    gbox.addWidget(@name_label, 1, 0)
    gbox.addWidget(@name_ledit, 1, 1)
    gbox.addWidget(@description_label, 2, 0)
    gbox.addWidget(@description_ledit, 2, 1)
    gbox.addWidget(@gp_value_label, 3, 0)
    gbox.addWidget(@gp_value_ledit, 3, 1)
    gbox.addWidget(@add_button, 4, 0)
    gbox.addWidget(@remove_button, 4, 1)

    vbox.addWidget(@items_label)
    vbox.addWidget(@items_listview)

    hbox.addLayout(vbox)
    hbox.addLayout(gbox)

    setLayout(hbox)
  end

end
