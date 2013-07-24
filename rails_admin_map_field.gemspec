# coding: UTF-8

Gem::Specification.new do |s|
  s.add_development_dependency('devise', '>= 1.1')
  s.add_development_dependency('rspec-rails', '>= 2.4')
  s.add_development_dependency('yard', '>= 0.6')

  # If you add a runtime dependency, please maintain alphabetical order
  s.add_runtime_dependency('rails', '>= 3.0.0')

  # TODO: uncomment next line when rails_admin gem will be released
  # s.add_runtime_dependency('rails_admin', '> 0.0.1')


  s.name              = "rails_admin_map_field"
  s.version           = "0.0.3"
  s.platform          = Gem::Platform::RUBY
  s.authors           = ["Keito Aino"]
  s.email             = ["keitoaino@gmail.com"]
  s.homepage          = "http://github.com/keitoaino/"
  s.summary           = "Adds a map field using the Google Maps API to rails_admin"
  s.description       = "A map field for RailsAdmin that can be used to manipulate a address/latitude/longitude fields"
  s.rubyforge_project = s.name

  s.required_rubygems_version = ">= 1.3.6"

  s.files             = `git ls-files`.split("\n")
  s.require_path      = 'lib'
end