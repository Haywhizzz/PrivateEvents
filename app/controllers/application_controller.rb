class ApplicationController < ActionController::Base
    helper_method :current_user
    def CheckUser
       if !session[:user_id]
       redirect_to new_session_path
       end
    end
    def current_user
        @current_user = session[:user_id] if session[:user_id]
        # @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end
end
