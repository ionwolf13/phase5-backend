class AuthController < ApplicationController

    # skip_before_action :authorized, only: [:create, :auto_login]

    def create
      
      @user = User.find_by(username: user_login_params[:username])
     
      if @user && @user.authenticate(user_login_params[:password])
        # user = @user.to_json({include: [:rooms]})
        render json: {user: @user.to_json({include: [:rooms => {:include => [:instructor => {:include => [:assignments => {:include => [:student_assignments]}]}]}], except: [:created_at, :updated_at]}), token: JWT.encode({user_id: @user.id}, 'ChildrenOfTheCode')}, status: :accepted   
      else
        render json: { message: 'Invalid username or password', status: :unauthorized }
      end
    end
  
    def auto_login
      @token = params[:token]
      user = User.find(JWT.decode(@token, "ChildrenOfTheCode", true, algorithm: 'HS256')[0]["user_id"])
      render json: user
    end
  
    private
  
    def user_login_params
      params.require(:user).permit(:username, :password)
    end

end