require "net/http"
require "roster/version"
require "roster/configuration"
require "roster/sinatra"
require "roster/base"

module Roster
  def self.configure
    yield Configuration.instance
  end
end
