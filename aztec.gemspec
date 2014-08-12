Gem::Specification.new do |s|
  s.name            = 'hola'
  s.version         = '0.0.0'
  s.date            = '2014-08-12'
  s.summary         = "The Aztec parser for Cocoapods"
  s.description     = "Lets you know which pods are outdated"
  s.authors         = ["Bruno Abrantes"]
  s.email           = 'bruno@brunoabrantes.com'
  s.files           = ["lib/azted.rb", "bin/aztec"]
  s.executables     << 'aztec'
  s.add_dependency  'cocoapods', :git => "https://github.com/inf0rmer/cocoapods.git"
  s.add_dependency  'claide', :git => 'https://github.com/CocoaPods/CLAide.git', :branch => 'master'
  s.homepage        = 'http://rubygems.org/gems/aztec'
  s.license         = 'MIT'
end
