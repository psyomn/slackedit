require 'Qt4'

require 'presentation/create_specify_game_name.rb'

# Author :: Simon Symeonidis
# License :: GPL v3.0
class Main < Qt::Dialog
  slots 'clicked_create()'
  slots 'clicked_load()'

  def initialize(parent=nil)
    super()
    
    vbox = Qt::VBoxLayout.new()
    @button_create = Qt::PushButton.new(tr("Create"))
    @button_load   = Qt::PushButton.new(tr("Load"))
    connect(@button_create, SIGNAL('clicked()'), self, SLOT('clicked_create()'))
    connect(@button_load, SIGNAL('clicked()'), self, SLOT('clicked_load()'))

    vbox.addWidget(button_create)
    vbox.addWidget(button_load)

    setWindowTitle("Slackedit")
    setLayout(vbox)
  end

  attr :button_create, :button_load

private

  def clicked_create()
    self.hide
    CreateSpecifyGameName.new(self).exec
    self.show
  end

  # TODO 
  def clicked_load()
  end

end
