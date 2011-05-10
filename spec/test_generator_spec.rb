require 'spec_helper'

describe Cowboycoded do
  DIR = File.dirname(__FILE__)
  
  before(:each) do
    FileUtils.cp("#{DIR}/templates/Gemfile","#{DIR}/../test_app/")
  end
    
  it "should add testing group to Gemfile" do
    systemu("cd #{File.dirname(__FILE__)}/../test_app/ && rails g cowboycoded:test_group")
    gemfile_content = IO.read("#{DIR}/../test_app/Gemfile")
    template_content = IO.read("#{DIR}/../lib/generators/cowboycoded/test_group/templates/Gemfile")
    gemfile_content.should match /#{template_content}/
  end
end