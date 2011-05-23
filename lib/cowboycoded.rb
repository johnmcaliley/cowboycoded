require 'cowboycoded/railtie'
require 'core_ext/string'

module Cowboycoded
  module CucumberSteps
    autoload :Browser, 'cucumber_steps/browser'
    autoload :File, 'cucumber_steps/file'
  end
end