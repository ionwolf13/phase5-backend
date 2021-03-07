class InstructorsController < ApplicationController

    def index
        @instructors = Instructor.all
        render json: @instructors
    end

    def show
        @instructor = Instructor.find(params[:id])
        # render json: @instructor.to_json({include: [:room, :assignments => {:include => [:users]}]})
        render json: @instructor.to_json({include: [:assignments, :room => {:include => [:users => {:include => [:assignments]}]}]})
    end

    def create
        @instructor = Instructor.new(instructor_params(:first_name, :middle_name, :last_name, :username, :age, :email, :password, :password_confirmation))
        if @instructor.valid?
            @instructor.save
            
            render json: {message: 'Application Submitted', instructor: @instructor}
        else
            render json: {message: @instructor.errors}
        end
       
    end

    def update
        @instructor = Instructor.find(params[:id])
        @instructor.update(instructor_params(:username, :email, :email_confirmation, :password, :password_confirmation))
        render json: @instructor.to_json({include: [:assignments ,:room => {:include => [:users => {:include => [:assignments]}]}]})
    end

    def destroy
        @instructor = Instructor.find(params[:id])
        @instructor.destroy
        render json: {message: "Fired!"}
    end


    private

    def instructor_params(*args)
        params.require(:instructor).permit(*args)
    end



end