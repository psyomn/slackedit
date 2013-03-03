require 'Qt4'

class InfoWidget < Qt::Widget
  slots("clicked_save()")

  def initialize
    super
    @game_name_ledit = Qt::LineEdit.new
    @game_name_label = Qt::Label.new(tr("Game Name"))
    @game_info_label = Qt::Label.new(tr("About this game"))
    @game_info_ledit = Qt::TextEdit.new
    @game_authors_label = Qt::Label.new(tr("Game Authors"))
    @game_authors_tedit = Qt::TextEdit.new
    @button_save_info = Qt::PushButton.new(tr("Save"))

    grid = Qt::GridLayout.new
    pos = -1
    l, r = 0, 1
    connect(@button_save_info, SIGNAL('clicked()'), self, SLOT("clicked_save"))

    grid.addWidget(@game_name_label, pos+=1, l)
    grid.addWidget(@game_name_ledit, pos, r)
    grid.addWidget(@game_info_label, pos+=1, l)
    grid.addWidget(@game_info_ledit, pos, r)
    grid.addWidget(@game_authors_label, pos+=1, l)
    grid.addWidget(@game_authors_ledit, pos, r)
    grid.addWidget(@button_save_info, pos+=1, l)
    setLayout(grid)
  end

private

  # User has chosen to save the game info
  def clicked_save()
  end

end
