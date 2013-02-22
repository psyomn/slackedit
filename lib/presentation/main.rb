require 'Qt4'

class Main < Qt::Dialog
  slots 'clicked_create()'
  slots 'clicked_load()'

  def initialize(parent=nil)
    super
    
    vbox = Qt::VBoxLayout.new()
    @button_create = Qt::PushButton.new(tr("Create"))
    @button_load   = Qt::PushButton.new(tr("Load"))
    connect(@button_create, SIGNAL('clicked()'), self, SLOT('clicked_create()'))
    connect(@button_create, SIGNAL('clicked()'), self, SLOT('clicked_load()'))

    vbox.addWidget(button_create)
    vbox.addWidget(button_load)

    setWindoTitle("Slackedit")
    setLayout(vbox)
  end

private

  def clicked_create
  puts "Clicked create"
  end

  def clicked_load
  puts "Clicked load"
  end

end
