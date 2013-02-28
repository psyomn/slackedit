require 'Qt4'

class EntityWidget < Qt::Widget

  def initialize
    super
    @line_edit = Qt::LineEdit.new
  end

end
