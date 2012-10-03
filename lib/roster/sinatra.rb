require "sinatra/extension"

module Roster
  module Sinatra
    extend ::Sinatra::Extension

    module Helpers
      def current_user
        session_key = Configuration.instance.session_key
        session[session_key] && Roster::Base.new(session[session_key]).myself
      end
    end

    before do
      session_key    = Configuration.instance.session_key
      token_param    = Configuration.instance.token_param
      redirect_param = Configuration.instance.token_param
      host           = Configuration.instance.host

      session[session_key] = params[token_param] if params[token_param]
      if current_user
        if session[redirect_param]
          page = session[redirect_param]
          session.delete(redirect_param)
          redirect page
        end
      else
        session[redirect_param] = request.path_info
        redirect "#{Roster::Base.get_login_url}?postback=#{Configuration.instance.host}#{request.path_info}"
      end
    end

    helpers Roster::Sinatra::Helpers
  end
end
