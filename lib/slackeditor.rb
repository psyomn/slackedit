require 'presentation/main.rb'

# Author :: Simon Symeonidis 
# License :: GPL v3.0
# Delegation 
class SlackEditor
  def initialize
    Main.new.exec
  end
end
