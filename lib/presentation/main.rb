require 'Qt4'

class Main < Qt::Dialog
  slots 'clickedCreate()'
  slots 'clickedLoad()'

  def initialize(parent=nil)
    super
    
    vbox = Qt::VBoxLayout.new()
    button_create = Qt::PushButton.new(tr("Create"))
    button_load   = Qt::PushButton.new(tr("Load"))

    vbox.addWidget(button_create)
    vbox.addWidget(button_load)

    setWindoTitle("Slackedit")
    setLayout(vbox)
  end

private

  def clickedCreate
  end

  def clickedLoad
  end

end
