module UsersApi
  class Configuration
    include Singleton

    attr_accessor :session_key, :token_param, :redirect_param, :host, :endpoint

    def initialize
      @session_key    = "user_access_token"
      @token_param    = "token"
      @redirect_param = "redirect_to"
    end
  end
end
