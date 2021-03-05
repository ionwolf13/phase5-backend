class ApplicationController < ActionController::API

    def LoggedIn
        !!current_user
    end

    def current_user
        User.find([session[:id]])
    end

    def not_logged_in
        render json: {error: "Need to Sign In!"}
    end



end
