require "google_analytics"
require "minitest/spec"
require "minitest/autorun"
require "webmock/minitest"
require "vcr"

VCR.configure do |c|
  c.cassette_library_dir = "test/fixtures"
  c.hook_into :webmock
end