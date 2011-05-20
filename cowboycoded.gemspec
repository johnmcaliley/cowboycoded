# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{cowboycoded}
  s.version = "0.0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["John McAliley"]
  s.date = %q{2011-05-20}
  s.description = %q{helps you code quicker}
  s.email = %q{john.mcaliley@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.md"
  ]
  s.files = [
    ".document",
    "Gemfile",
    "LICENSE.txt",
    "README.md",
    "Rakefile",
    "VERSION",
    "cowboycoded.gemspec",
    "lib/core_ext/string.rb",
    "lib/cowboycoded.rb",
    "lib/cowboycoded/cucumber_steps/browser.rb",
    "lib/cowboycoded/cucumber_steps/file.rb",
    "lib/cowboycoded/railtie.rb",
    "lib/generators/cowboycoded/common_app/USAGE",
    "lib/generators/cowboycoded/common_app/common_app_generator.rb",
    "lib/generators/cowboycoded/engine/engine_generator.rb",
    "lib/generators/cowboycoded/railtie/railtie_generator.rb",
    "lib/generators/cowboycoded/test_group/USAGE",
    "lib/generators/cowboycoded/test_group/templates/Gemfile",
    "lib/generators/cowboycoded/test_group/test_group_generator.rb",
    "spec/core_ext_spec.rb",
    "spec/spec_helper.rb",
    "spec/templates/Gemfile",
    "spec/test_generator_spec.rb",
    "test_app/.gitignore",
    "test_app/Gemfile",
    "test_app/README",
    "test_app/Rakefile",
    "test_app/app/controllers/application_controller.rb",
    "test_app/app/helpers/application_helper.rb",
    "test_app/app/views/layouts/application.html.erb",
    "test_app/config.ru",
    "test_app/config/application.rb",
    "test_app/config/boot.rb",
    "test_app/config/database.yml",
    "test_app/config/environment.rb",
    "test_app/config/environments/development.rb",
    "test_app/config/environments/production.rb",
    "test_app/config/environments/test.rb",
    "test_app/config/initializers/backtrace_silencers.rb",
    "test_app/config/initializers/inflections.rb",
    "test_app/config/initializers/mime_types.rb",
    "test_app/config/initializers/secret_token.rb",
    "test_app/config/initializers/session_store.rb",
    "test_app/config/locales/en.yml",
    "test_app/config/routes.rb",
    "test_app/db/seeds.rb",
    "test_app/lib/tasks/.gitkeep",
    "test_app/public/404.html",
    "test_app/public/422.html",
    "test_app/public/500.html",
    "test_app/public/favicon.ico",
    "test_app/public/images/rails.png",
    "test_app/public/index.html",
    "test_app/public/javascripts/application.js",
    "test_app/public/javascripts/controls.js",
    "test_app/public/javascripts/dragdrop.js",
    "test_app/public/javascripts/effects.js",
    "test_app/public/javascripts/prototype.js",
    "test_app/public/javascripts/rails.js",
    "test_app/public/robots.txt",
    "test_app/public/stylesheets/.gitkeep",
    "test_app/script/rails",
    "test_app/test/performance/browsing_test.rb",
    "test_app/test/test_helper.rb",
    "test_app/vendor/plugins/.gitkeep"
  ]
  s.homepage = %q{http://github.com/cowboycoded/cowboycoded}
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Utility classes, core_ext and generators to ease development}
  s.test_files = [
    "spec/core_ext_spec.rb",
    "spec/spec_helper.rb",
    "spec/test_generator_spec.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<shoulda>, [">= 0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.5.1"])
      s.add_development_dependency(%q<rcov>, [">= 0"])
    else
      s.add_dependency(%q<shoulda>, [">= 0"])
      s.add_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.5.1"])
      s.add_dependency(%q<rcov>, [">= 0"])
    end
  else
    s.add_dependency(%q<shoulda>, [">= 0"])
    s.add_dependency(%q<bundler>, ["~> 1.0.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.5.1"])
    s.add_dependency(%q<rcov>, [">= 0"])
  end
end

