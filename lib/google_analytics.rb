require "google_analytics/version"
require "google_analytics/error"
require "google_analytics/configuration"
require "google_analytics/client"

module GoogleAnalytics
  extend Configuration

  def self.client(options={})
    GoogleAnalytics::Client.new(options)
  end
end
