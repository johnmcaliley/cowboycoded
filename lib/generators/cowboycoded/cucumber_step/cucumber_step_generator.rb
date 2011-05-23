require 'rails/generators'
require 'rails/generators/migration'     

module Cowboycoded
  class CucumberStepGenerator < Rails::Generators::Base
    TEMPLATES_DIR = File.join(File.dirname(__FILE__), 'templates')
    source_root TEMPLATES_DIR

    def steps
      directory 'features'
    end
  end
end