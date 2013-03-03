# Author :: Simon Symeonidis 
# License :: GPL v3.0
# This is the very simple info object for cartridge data. Things like author
# names, game description, and etc may be created as an object here and used
# with the mapper.
# See the InfoMapper
class Info

  # Line w/ game name
  attr_accessor :game_name
  # Multiline about
  attr_accessor :about
  # Multiline authors
  attr_accessor :authors

end
