class AssignmentsController < ApplicationController

    def index
        @assignments = Assignment.all
        
        render json: @assignments
    end

    def show
        @assignment =Assignment.find(params[:id])
        render json: @assignment
    end

    def create
       debugger
        @assignment = Assignment.new(assignment_params(:instructor_id, :assignment_name, :assignment_topic, :level_difficulty, :grade_level, :score_average))
       
        if @assignment.valid?
            @assignment.save
            render json: @assignment
        else
            render json: {errors: "Invalid Info"}
        end
        
    end


    def update
        @assignment =Assignment.find(params[:id])
        @assignment.update(user_params())
    end

    def delete
        @assignment = Assignment.find(params[:id])
        @assignment.delete
        render json: {message: "DELETED"}
    end


    private

    def assignment_params(*args)
        params.require(:assignment).permit(*args)
    end



end