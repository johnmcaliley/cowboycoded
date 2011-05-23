# TL;DR: YOU SHOULD DELETE THIS FILE
#
# This file was generated by Cucumber-Rails and is only here to get you a head start
# These step definitions are thin wrappers around the Capybara/Webrat API that lets you
# visit pages, interact with widgets and make assertions about page content.
#
# If you use these step definitions as basis for your features you will quickly end up
# with features that are:
#
# * Hard to maintain
# * Verbose to read
#
# A much better approach is to write your own higher level step definitions, following
# the advice in the following blog posts:
#
# * http://benmabey.com/2008/05/19/imperative-vs-declarative-scenarios-in-user-stories.html
# * http://dannorth.net/2011/01/31/whose-domain-is-it-anyway/
# * http://elabs.se/blog/15-you-re-cuking-it-wrong
#


require 'uri'
require 'cgi'
require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))
require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "selectors"))

module WithinHelpers
  def with_scope(locator)
    locator ? within(*selector_for(locator)) { yield } : yield
  end
end
World(WithinHelpers)

Then /^show me the page$/ do
  save_and_open_page
end


Given /^a working directory$/ do
  @working_dir = File.dirname(__FILE__)+"/../../"
end

Then /^a timestamped file named "([^"]*)" is created in the "([^"]*)" directory$/ do |file,dir|
  full_dir = @working_dir+dir
  Dir.entries(full_dir).each do |timestamped_file|
    file = timestamped_file if timestamped_file.include? file
  end
  assert File.exists?(full_dir+file), "#{file} expected to exist, but did not"
  assert File.file?(full_dir+file), "#{file} expected to be a file, but is not"
end

When /^I run the "([^"]*)" generator$/ do |generator|
  @generator_output = systemu("rails g #{generator}")
end

Then /^a file named "([^"]*)" is created in the "([^"]*)" directory$/ do |file,dir|
  full_dir = @working_dir+dir
  assert File.exists?(full_dir+file), "#{file} expected to exist, but did not"
  assert File.file?(full_dir+file), "#{file} expected to be a file, but is not"
end

Then /^the file "([^"]*)" contains "([^"]*)"$/ do |file, text|
  path = @working_dir+file
  file_content = IO.read(path)
  assert file_content.match(/#{text}/), "#{text} expected in #{path}"
end

Given /^I cleanup the generated cucumber step files$/ do
  FileUtils.rm(@working_dir+"features/step_definitions/file_steps.rb") rescue nil
  FileUtils.rm(@working_dir+"features/step_definitions/browser_steps.rb") rescue nil  
end