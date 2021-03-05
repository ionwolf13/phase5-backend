class AssignmentsConroller < ApplicationController

    def index
        @assignments =Assignment.all
        
        render json: @assignments
    end

    def show
        @assignemnt =Assignment.find(params[:id])
        render json: @assignemnt
       
    def create
        @assignemnt = Assignment.new(user_params())
        if @assignemnt.valid?
            @assignemnt.save
        else
            render json: {errors: "Invalid Info"}
        end
        render json: @assignemnt
    end

    def update
        @assignemnt =Assignment.find(params[:id])
        @assignemnt.update(user_params())
    end

    def delete

    end


    private

    def user_params(*args)
        params.require(:user).permit(*args)
    end



end