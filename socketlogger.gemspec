Gem::Specification.new do |gem|
  gem.name        = 'socketlogger'
  gem.version     = '0.0.1'
  gem.licenses    = 'MIT'
  gem.authors     = ['Kinnan Kwok']
  gem.email       = 'kkwoker@gmail.com'
  gem.summary     = 'Socket logging by pubsub'

  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.executables   = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  gem.require_paths = ['lib']

  gem.add_runtime_dependency 'ezmq', '~> 0.4.4'

  gem.add_development_dependency 'pry'
  gem.add_development_dependency 'kintama'
end
