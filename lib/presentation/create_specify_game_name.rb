require 'presentation/game_editor.rb'
require 'domain/cartridge_manager.rb'
require 'datasource/table_manager.rb'

# Author :: Simon Symeonidis
# License :: GPL v3.0
# Tiny dialog to get name of game before proceeding to the editor
# TODO: Going to make this generic in the future (if needed)
class CreateSpecifyGameName < Qt::Dialog
  slots 'accept()'
  slots 'reject()'

  # Default initialization 
  def initialize(parent=nil)
    super(parent)
    @game_name_label = Qt::Label.new(tr("Game Name:"))
    @game_name_ledit = Qt::LineEdit.new
    @button_accept   = Qt::PushButton.new(tr("Accept"))
    @button_reject   = Qt::PushButton.new(tr("Cancel"))
    @button_layout   = Qt::GridLayout.new
    vbox             = Qt::VBoxLayout.new()

    vbox.addWidget(@game_name_label)
    vbox.addWidget(@game_name_ledit)
    @button_layout.addWidget(@button_accept, 0, 0)
    @button_layout.addWidget(@button_reject, 0, 1)
    vbox.addLayout(@button_layout)

    setLayout(vbox)
    connect(@button_accept, SIGNAL('clicked()'), self, SLOT('accept()'))
    connect(@button_reject, SIGNAL('clicked()'), self, SLOT('reject()'))

    setWindowTitle(tr("Specify game name"))
  end

private

  def accept()
    CartridgeManager.instance.game_name = @game_name_ledit.text()
    TableManager.make_new_cartridge(@game_name_ledit.text())
    ged = GameEditor.new(self)
    self.hide
    ged.exec
  end

  def reject()
    self.hide
  end

end
