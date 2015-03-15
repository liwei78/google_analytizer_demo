require "./test/test_helper"

describe "configuration" do

  GoogleAnalytics::Configuration::VALID_CONFIG_KEYS.each do |key|
    describe ".#{key}" do
      it "should return the default value" do
        GoogleAnalytics.send(key).must_equal GoogleAnalytics::Configuration.const_get("DEFAULT_#{key.upcase}")
      end
    end
  end

end
