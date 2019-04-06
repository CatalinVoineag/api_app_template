require 'vcr'
require 'rails'

VCR.configure do |config|
  config.cassette_library_dir = 'spec/support/vcr/cassettes'
  config.hook_into :webmock
  config.default_cassette_options = {
    erb: true,
    match_requests_on: %i{ method host path body },
  }
  config.configure_rspec_metadata!
  config.debug_logger = File.open("log/vcr.log", 'w')
  config.allow_http_connections_when_no_cassette = true
end
