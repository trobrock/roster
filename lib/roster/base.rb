require "ostruct"

module Roster
  class Base
    def self.get_login_url
      url = URI.parse(Configuration.instance.endpoint)
      res = Net::HTTP.start(url.host, url.port) do |http|
        http.get('/')
      end

      raise if res.code != "302"
      res['location']
    end

    def initialize(token)
      @token = token
    end

    def myself
      request '/myself'
    end

    private

    def request(path)
      url = URI.parse("#{Configuration.instance.endpoint}/#{path}")
      res = Net::HTTP.start(url.host, url.port) do |http|
        http.get("#{path}?token=#@token")
      end

      if res.code == "302"
        res['location']
      else
        OpenStruct.new(JSON.parse(res.body))
      end
    end
  end
end
