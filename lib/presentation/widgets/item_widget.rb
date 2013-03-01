require 'Qt4' 

# Author :: Simon Symeonidis
# Widget for managing a single (in-game) item, its prorperties/effects
class ItemWidget < Qt::Widget

  def initialize
    super
    hbox = Qt::HBoxLayout.new
    vbox = Qt::VBoxLayout.new
    @id_ledit = Qt::LineEdit.new
    @items_listview = Qt::Listview.new
    @name_ledit = Qt::LineEdit.new
    @description_ledit = Qt::LineEdit.new
    @gp_value_ledit = Qt::LineEdit.new
    @key_item_checkbox = Qt::Checkbox.new

    @id_ledit.disable(true)
  end

end
