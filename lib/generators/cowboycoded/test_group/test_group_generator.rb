require 'rails/generators'
require 'rails/generators/migration'     

module Cowboycoded
  class TestGroupGenerator < Rails::Generators::Base
    TEMPLATES_DIR = File.join(File.dirname(__FILE__), 'templates')
    source_root TEMPLATES_DIR

    def testing_generator
      gemfile_content = IO.read("#{TEMPLATES_DIR}/Gemfile")
      append_file("Gemfile", "\n\n#{gemfile_content}")
    end
  end
end