require 'Qt4'

require 'domain/cartridge_manager.rb'
require 'presentation/create_specify_game_name.rb'
require 'presentation/game_editor.rb'

# Author :: Simon Symeonidis
# License :: GPL v3.0
class Main < Qt::Dialog
  slots 'create()'
  slots 'load()'

  # Default; init ui
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

  # Button to create a new game cartridge
  attr_accessor :button_create
  # Button to load an existing game catridge
  attr_accessor :button_load

private

  # Create a new game database
  def create()
    self.hide
    CreateSpecifyGameName.new(self).exec
    self.show
  end

  # Load a previously created game database
  def load()
    abs_path = \
    Qt::FileDialog.getOpenFileName(self, tr("Open Cartridge"),
                                   "", tr("Files (*.cart)"))
    # Init Resources 
    CartridgeManager.instance.absolute_file_path = File.split(abs_path).first
    CartridgeManager.instance.game_name = File.basename(abs_path)
    entities = EntityMapper.find_all
    entities.each do |e|
      CartridgeManager.instance.add_entity(e)
    end

    # Show the UI
    ged = GameEditor.new
    self.hide
    ged.exec
    self.show
  end

end
