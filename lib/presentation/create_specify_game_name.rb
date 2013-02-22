# Author :: Simon Symeonidis
# License :: GPL v3.0

class CreateSpecifyGameName < Qt::Dialog
  slots 'accept()'
  slots 'reject()'

  def initialize
    @game_name_label = Qt::Label.new(tr("Game Name:"))
    @game_name_ledit = Qt::LineEdit.new
    @button_accept   = Qt::PushButton.new(tr("Accept"))
    @button_reject   = Qt::PushButton.new(tr("Reject"))
    @button_layout   = Qt::GridLayout.new
    vbox = Qt::VBoxLayout.new()

    vbox.addWidget(@game_name_label)
    vbox.addWidget(@game_name_ledit)
    @button_layout.addWidget(@button_accept, 0, 0)
    @button_layout.addWidget(@button_reject, 0, 1)
    vbox.addLayout(@button_layout)

    setLayout(vbox)

    setWindowTitle("Specify game name")
  end


private

  def accept(game_name)
  end

  def reject()
  end

end
