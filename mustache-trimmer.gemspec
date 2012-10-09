Gem::Specification.new do |s|
  s.name      = 'mustache-trimmer-rails'
  s.version   = '0.2.0'

  s.homepage    = "https://github.com/icelab/mustache-trimmer-rails"
  s.summary     = "Mustache JS compiler packaged for the Rails asset Pipeline"
  s.description = <<-EOS
    Ruby lib that compiles Mustache templates into pure Javascript
  EOS

  s.files = [
    'lib/mustache/javascript_generator.rb',
    'lib/mustache/js.rb',
    'lib/mustache-trimmer-rails.rb',
    'LICENSE',
    'README.md'
  ]

  s.add_dependency 'mustache', '~> 0.99.4'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'therubyracer'

  s.authors           = ['Joshua Peek', 'Hugh Evans']
  s.email             = 'josh@joshpeek.com'
  s.rubyforge_project = 'mustache-trimmer-rails'
end
