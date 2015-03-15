require "test_helper"

describe GoogleAnalytics::Client do

  describe ".keywords" do
    before do
      @options = {
        site_id: 1,
      }
    end

    it "should return keywords" do
      VCR.use_cassette("keywords") do
        response = GoogleAnalytics::Client.new.keywords(@options)
        response.must_be :hash
      end
    end
  end

  describe ".backlinks" do
    before do
      @options = {
        site_id: 1,
        link: 'www.test.com/link'
      }
    end

    it "should return backlinks" do
      VCR.use_cassette("backlinks") do
        response = GoogleAnalytics::Client.new.backlinks(@options)
        response.must_be :hash
      end
    end
  end


end
