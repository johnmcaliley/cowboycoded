require 'rails/generators'
require 'rails/generators/migration'     

module Cowboycoded
  class CommonAppGenerator < Rails::Generators::Base
    TEMPLATES_DIR = File.join(File.dirname(__FILE__), 'templates')
    source_root TEMPLATES_DIR

    def common_app
      append_file("Gemfile", "\ngem 'boilerplate_engine', :git=>'git@github.com:charlotte-ruby/boilerplate_engine.git'")
      append_file("Gemfile", "\ngem 'social_engine', :git=>'git@github.com:charlotte-ruby/social_engine.git'")
    end
  end
end