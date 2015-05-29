$:.push File.expand_path("../lib", __FILE__)

require 'snack_roulette/version'

Gem::Specification.new do |s|
  s.required_ruby_version = '>= 2.1.3'
  s.name        = 'snack_roulette'
  s.version     = SnackRoulette::VERSION
  s.date        = '2015-05-29'
  s.summary     = 'The amazing snack roulette wheel of awesome fortune!'
  s.description = "When you want a snack but can't be bothered to choose one yourself."
  s.authors     = ['Olle Johansson']
  s.email       = 'Olle@Johansson.com'
  s.files       = Dir['{bin,lib}/**/*']
  s.homepage    =
    'https://github.com/ollej/snack_roulette'
  s.license     = 'MIT'
  s.executables << 'snack_roulette'

  s.add_development_dependency 'rspec', '~> 3.2'
  s.add_development_dependency 'rake', '~> 10.4'
end
