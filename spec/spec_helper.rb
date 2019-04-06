require 'shoulda-matchers'
require 'factory_bot'
require 'support/vcr'
require 'shoulda-matchers'

 require 'simplecov'
 SimpleCov.start 'rails'

 require 'dotenv'

 Dotenv.load(
   "#{Dir.pwd}/.env.test",
   "#{Dir.pwd}/.env"
 )

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  RSpec.configure do |config|
    config.treat_symbols_as_metadata_keys_with_true_values = true
  end

  config.include FactoryBot::Syntax::Methods

  config.before do
    FactoryBot.find_definitions if FactoryBot.factories.count == 0
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups

=begin
  config.filter_run_when_matching :focus

  config.example_status_persistence_file_path = "spec/examples.txt"

  config.disable_monkey_patching!

  if config.files_to_run.one?
    config.default_formatter = "doc"
  end

  config.profile_examples = 10

  config.order = :random

  Kernel.srand config.seed
=end
end
