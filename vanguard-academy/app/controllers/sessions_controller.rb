class SessionsController < ApplicationController

    
    def new

    end

    def create
        
        user = User.find_by(username: params[:username])

        # debugger
        session[:loggedIn] = false
        session[:current_role] = ""
        
        if user && user.authenticate(params[:password])
            
            session[:user_id] = user.id
            session[:loggedIn] = true
            session[:current_role] = "student"
            render json: user.to_json({include: [:rooms => {:include => [:instructor]}], except: [:created_at, :updated_at]})
        else
            render json: {error: "Inalid Username/Password", status: 505}
        end

    end

    def destroy
        session[:user_id] = nil
        session[:loggedIn] = false
        render json: {user: {}, message: "Logout Complete"}
    end


end 