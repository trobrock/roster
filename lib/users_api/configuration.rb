module UsersApi
  class Configuration
    include Singleton

    attr_accessor :session_key, :redirect_param, :host, :endpoint
    attr_reader   :token_param

    def initialize
      @session_key    = "user_access_token"
      @token_param    = "token"
      @redirect_param = "redirect_to"
    end
  end
end
