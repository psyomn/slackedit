require 'Qt4'

require 'domain/cartridge_manager.rb'
require 'presentation/create_specify_game_name.rb'
require 'presentation/game_editor.rb'

# Author :: Simon Symeonidis
# License :: GPL v3.0
class Main < Qt::Dialog
  slots 'create()'
  slots 'load()'

  def initialize(parent=nil)
    super()
    
    vbox = Qt::VBoxLayout.new()
    @button_create = Qt::PushButton.new(tr("Create"))
    @button_load   = Qt::PushButton.new(tr("Load"))
    connect(@button_create, SIGNAL('clicked()'), self, SLOT('create()'))
    connect(@button_load, SIGNAL('clicked()'), self, SLOT('load()'))

    vbox.addWidget(button_create)
    vbox.addWidget(button_load)

    setWindowTitle("Slackedit")
    setLayout(vbox)
  end

  attr :button_create, :button_load

private

  def create()
    self.hide
    CreateSpecifyGameName.new(self).exec
    self.show
  end

  # TODO 
  def load()
    abs_path = Qt::FileDialog.getOpenFileName(self, tr("Open Cartridge"),
                                              "", tr("Files (*.cart)"))
    CartridgeManager.instance.absolute_file_path = abs_path
    CartridgeManager.instance.game_name = File.basename(abs_path)
    ged = GameEditor.new
    self.hide
    ged.exec
    self.show
  end

end
