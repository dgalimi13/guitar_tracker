class ApplicationController < Sinatra::Base
    register Sinatra::ActiveRecordExtension
    use Rack::Flash
  
    get "/" do
      erb :welcome
    end
  
    helpers do
      def logged_in?
        !!current_user
      end
  
      def current_user
        @user ||= User.find(session[:user_id]) if session[:user_id]
      end
    end

    def authentication_required
      if !logged_in?
        flash[:notice] = "You must be logged in."
        redirect '/'
      end
    end
  
  end
  
  