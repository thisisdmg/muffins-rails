require 'rails'
require 'sass-rails'
require 'compass-rails'

module Muffins
  module Rails
    class Engine < ::Rails::Engine
      initializer 'muffins-rails.load_config_initializers', after: 'setup_sass', group: :all do |app|
        app.config.sass.load_paths << config.root.join('vendor', 'assets')
      end
    end
  end
end
