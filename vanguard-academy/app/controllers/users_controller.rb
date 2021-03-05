class UsersController < ApplicationController

    def index
        @users = User.all
        render json: User.all.to_json({include: [:rooms => {:include => [:instructor]}], except: [:created_at, :updated_at]})
    end

    def show
        @user = User.find(params[:id])
        render json: @user.to_json({:include => [:student_rooms => {:include => [:room => {:include => [:instructor]}]}]}) 
    end
       
    def create
        @user = User.new(user_params(:first_name, :middle_name, :last_name, :username, :age, :email, :password, :password_confirmation))
        debugger
        if @user.valid?
            @user.save
            
            render json: {message: 'Application Submitted', user: @user}
        else
            render json: {message: @user.errors}
        end
       
    end

    def update
        @user = User.find(params[:id])
        @user.update(user_params())
    end

    def delete

    end


    private

    def user_params(*args)
        params.require(:user).permit(*args)
    end

end