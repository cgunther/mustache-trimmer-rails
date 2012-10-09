require 'mustache/js'
require 'sprockets'
require 'tilt'

module Sprockets
  class MustacheJsTemplate < ::Tilt::Template
    self.default_mime_type = 'application/javascript'
    
    def self.engine_initialized?
      defined? ::Mustache.to_javascript
    end

    def initialize_engine
      require_template_library 'mustache/js'
    end

    def prepare
    end

    def evaluate(scope, locals, &block)
      Mustache.to_javascript(data)
    end
  end
end

Sprockets::Engines
Sprockets.register_engine '.mustachejs', Sprockets::MustacheJsTemplate
