require 'Qt4'

require_relative 'presentation/create_specify_game_name.rb'

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
    
  end

  def clicked_load()
  puts "Clicked load"
  end

end
