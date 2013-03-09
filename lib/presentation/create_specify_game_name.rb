require 'presentation/game_editor.rb'
require 'domain/cartridge_manager.rb'
require 'datasource/table_manager.rb'

# Author :: Simon Symeonidis
# License :: GPL v3.0
# Tiny dialog to get name of game before proceeding to the editor
class CreateSpecifyGameName < Qt::Dialog
  slots 'accept()'
  slots 'reject()'
  slots 'choose_path()'

  # Default initialization 
  def initialize(parent=nil)
    super(parent)
    make_ui

    setWindowTitle(tr("Specify game name"))
  end

private

  # TODO add guards here to makes sure that filenames make sense
  # (no symbols, no whitespaces etc)
  def accept()
    game_name = @game_name_ledit.text
    game_name += ".cart" if game_name.match(/\.cart$/).nil?
    CartridgeManager.instance.game_name = game_name
    CartridgeManager.instance.absolute_file_path = @path_ledit.text
    TableManager.make_new_cartridge(game_name) 
    
    ged = GameEditor.new(self)
    self.hide
    ged.exec

    # Game editor closing means we want to unload previous data
    CartridgeManager.instance.clear
  end

  # Create the ui
  def make_ui
    make_widgets
    make_widget_associations
  end

  # Create the Qt UI objects
  def make_widgets
    @game_name_label = Qt::Label.new(tr("Game Name"))
    @game_name_ledit = Qt::LineEdit.new
    @path_label = Qt::Label.new(tr("Path"))
    @path_ledit = Qt::LineEdit.new
    @choose_path_button = Qt::PushButton.new(tr("..."))
    @button_accept = Qt::PushButton.new(tr("Accept"))
    @button_reject = Qt::PushButton.new(tr("Cancel"))
    @button_layout = Qt::GridLayout.new
    @vbox = Qt::VBoxLayout.new
    @hbox_for_path = Qt::HBoxLayout.new
  end

  # Make the widget associations
  def make_widget_associations
    series = -1
    @path_ledit.setEnabled(false)
    @path_ledit.text = "Choose Path" 

    @vbox.addWidget(@game_name_label)
    @vbox.addWidget(@game_name_ledit)
    @vbox.addWidget(@path_label)
    @hbox_for_path.addWidget(@path_ledit)
    @hbox_for_path.addWidget(@choose_path_button)
    @vbox.addLayout(@hbox_for_path)
    @button_layout.addWidget(@button_accept, series += 1, 0)
    @button_layout.addWidget(@button_reject, series,  1)
    @vbox.addLayout(@button_layout)

    setLayout(@vbox)
    connect(@button_accept, SIGNAL('clicked()'), self, SLOT('accept()'))
    connect(@button_reject, SIGNAL('clicked()'), self, SLOT('reject()'))
    connect(@choose_path_button, SIGNAL('clicked()'), 
            self, SLOT('choose_path()'))
  end

  # User doesn't want to do anything. Hide the menu, go back to main menu
  def reject()
    self.hide
  end

  # Open a QFileDialog in order to get the path for opening the game file
  def choose_path()
    path = Qt::FileDialog.getExistingDirectory(self, tr("Select Directory"), 
                         "", Qt::FileDialog::ShowDirsOnly)
    @path_ledit.text = path
    CartridgeManager.instance.absolute_file_path = path
  end

end
