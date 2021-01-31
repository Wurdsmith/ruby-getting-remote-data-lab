require 'net/http'
require 'open-uri'
require 'json'

class GetRequester

    def initialize (url)
        @url = url
    end

    def get_response_body 
        request = URI.parse(@url)
        response = Net::HTTP.get_response(request)
        response.body
    end

    def parse_json
        hash = JSON.parse(self.get_response_body)
    end
end
