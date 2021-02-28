class SessionsController < Application Controller

    def new

    end

    def create
        session[:username] = params[:usernam]
        render json:
    end
end