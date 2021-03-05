class SessionsController < ApplicationController

    
    def create
        
        user = User.find_by(username: params[:username])

        # debugger
        session[:loggedIn] = false
        session[:current_role] = ""
        
        if user && user.authenticate(params[:password])
            
            session[:user_id] = user.id
            session[:loggedIn] = true
            session[:current_role] = "student"
            render json: user.to_json({include: [:rooms => {:include => [:instructor => {:include => [:assignments => {:include => [:student_assignments]}]}]}], except: [:created_at, :updated_at]})
        else
            render json: {message: "Inalid Username/Password"}, status: unauthorized
        end
        # .to_json({})
    end

    def destroy
        session[:user_id] = nil
        session[:loggedIn] = false
        render json: {user: {}, message: "Logout Complete"}
    end

    private

    def login_params
        params.require(:user).permit(:username,:password)
    end


end 