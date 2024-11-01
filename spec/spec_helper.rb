require 'httparty'
require 'httparty/request'
require 'httparty/response/headers'
require 'pry'
require 'rspec'
require 'yaml'

DATA = YAML.load_file('spec/data/data.yml')

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end
end
