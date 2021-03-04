class UsersController < ApplicationController

    def index
        @users = User.all
        render json: User.all.to_json({include: [:rooms => {:include => [:instructor]}], except: [:created_at, :updated_at]})
    end

    def show
        @user = User.find(params[:id])

        render json: @user.to_json({include: [:rooms => {:include => [:instructor]}], except: [:created_at, :updated_at]})
    end

    def create
        @user = User.new(user_params())
        if @user.valid?
            @user.save
        else

        end
        render json: @user
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