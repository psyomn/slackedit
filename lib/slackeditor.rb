require 'presentation/main.rb'

# Author :: Simon Symeonidis 
# License :: GPL v3.0
class SlackEditor
  def initialize
    Main.new.exec
  end
end
