require "users_api/version"
require "users_api/configuration"
require "users_api/sinatra"
require "users_api/base"

module UsersApi
  def self.configure
    yield Configuration.instance
  end
end
