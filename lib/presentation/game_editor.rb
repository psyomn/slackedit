require 'slackedit/version.rb'
require 'Qt4'

# Editor widgets go here
require 'presentation/widgets/entity_widget.rb'

# Author :: Simon Symeonidis
# Licence :: GPL v3.0
# The main editor 
class GameEditor < Qt::Dialog

  # Default initialization 
  def initialize(parent=nil,game_name)
    super(parent)
    @game_name = game_name
    vbox       = Qt::VBoxLayout.new()
    vbox.addWidget(@tabs)

    setWindowTitle("#{@game_name} | #{Slackedit::NAME}-#{Slackedit::VERSION}")
  end

private 

  # Init the required widgets
  def init_widgets
    self.make_tabs
  end

  def make_tabs
    @tabs = Qt::TabWidget.new
    @tabs.addTab(EntityWidget.new, "Test 1")
  end
  
  attr :tabs

end