# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'slackedit/version'

Gem::Specification.new do |gem|
  gem.name          = "slackedit"
  gem.version       = Slackedit::VERSION
  gem.authors       = ["psyomn"]
  gem.email         = ["lethaljellybean@gmail.com"]
  gem.description   = %q{slackedit is the game-data editor for slack}
  gem.summary       = %q{Use this game editor in order to make games and share with your friends as cartridges!}
  gem.homepage      = "http://github.com/psyomn/slackedit.git"

  gem.files         = `git ls-files`.split($/)
  gem.executables   << "slackedit"
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  #gem.add_dependency([['sqlite3', ">= 1.3.7"], ['qtbindings', ">= 4.8.3.0 "]])
end
