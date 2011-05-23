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