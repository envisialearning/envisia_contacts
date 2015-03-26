require 'her'
require "envisia_contacts/version"

module EnvisiaContacts
  class << self
    attr_accessor :api_key, :url

    def api
      @api ||= Her::API.new    
    end

    def configure
      yield self

      self.url = "https://www.envisialearning.com" if self.url.nil?

      EnvisiaContacts::api.setup url: self.url do |c|
        # Request
        c.use Faraday::Request::UrlEncoded

        # Response
        c.use Her::Middleware::DefaultParseJSON

        # Adapter
        c.use Faraday::Adapter::NetHttp
      end  

      require "envisia_contacts/envisia_contact"    
    end
  end
end