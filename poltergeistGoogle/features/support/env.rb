require 'capybara'
require 'capybara/cucumber'
require 'rspec'
require 'capybara/poltergeist'

Capybara.default_driver = :poltergeist
Capybara.javascript_driver = :poltergeist
Capybara.register_driver :poltergeist do |app|

	options = {
		:js_errors => false,
		:timeout => 120,
		:phantomjs_options => ['--load-images=yes', '--disk-cache=false'],
	}
	Capybara::Poltergeist::Driver.new(app, options)
end