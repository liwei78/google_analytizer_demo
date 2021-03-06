require "faraday"

module GoogleAnalytics
  module Configuration
    VALID_CONFIG_KEYS = [
      :adapter,
      :auth_token,
      :endpoint,
      :format,
      :user_agent,
      :proxy,
      :connection_options ]

    DEFAULT_ADAPTER = Faraday.default_adapter
    DEFAULT_AUTH_TOKEN = "aaabbbccc"
    DEFAULT_ENDPOINT = "https://api.googleapi.com".freeze
    DEFAULT_FORMAT = :json
    DEFAULT_PROXY = nil
    DEFAULT_USER_AGENT = "Default User Agent".freeze

    DEFAULT_CONNECTION_OPTIONS = {}

    attr_accessor *VALID_CONFIG_KEYS

    def configure
      yield self
    end

    def options
      VALID_CONFIG_KEYS.inject({}) do |option, key|
        option.merge!(key => send(key))
      end
    end

    def self.extended(base)
      base.reset
    end

    def reset
      self.adapter    = DEFAULT_ADAPTER
      self.endpoint   = DEFAULT_ENDPOINT
      self.auth_token = DEFAULT_AUTH_TOKEN
      self.format     = DEFAULT_FORMAT
      self.proxy      = DEFAULT_PROXY
      self.user_agent = DEFAULT_USER_AGENT
      self.connection_options = DEFAULT_CONNECTION_OPTIONS
    end

  end
end
