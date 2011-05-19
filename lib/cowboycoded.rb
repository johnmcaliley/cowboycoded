require 'cowboycoded/railtie'
require 'core_ext/string'

module Cowboycoded
  module CucumberSteps
    autoload :BrowserSteps, 'cucumber_steps/browser_steps'
    autoload :FileSteps, 'cucumber_steps/file_steps'
  end
end