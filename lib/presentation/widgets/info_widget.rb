require 'Qt4'

class InfoWidget < Qt::Widget

  def initialize
    super
    @game_name_ledit = Qt::LineEdit.new
    @game_name_label = Qt::Label.new(tr("Game Name"))
    @game_info_label = Qt::Label.new(tr("About this game"))
    @game_info_ledit = Qt::TextEdit.new
    @game_authors_label = Qt::Label.new(tr("Game Authors"))
    @game_authors_tedit = Qt::TextEdit.new
  end

end
