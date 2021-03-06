class StudentAssignmentsController < ApplicationController

    def index
        @stu_assignments = StudentAssignment.all        
        render json: @stu_assignments
    end

    def show
        @stu_assignment = StudentAssignment.find(params[:id])
        render json: @stu_assignment
    end

    def create
        @stu_assignment = StudentAssignment.create(stu_assignment_params(:user_id, :assignment_id, :student_score))
        if @stu_assignment.valid?
            @stu_assignment.save
            render json: @stu_assignment
        else
            render json: {errors: "Invalid Info"}
        end
        
    end

    def update
        @student_assignment = StudentAssignment.find(params[:id])
        @student_assignment.update(stu_assignment_params(:student_score))
        render json: @student_assignment
        
    end

    def destroy
        @stu_assignment = StudentAssignment.find(params[:id])
        @stu_assignment.delete
        render json: {:message: "DELETED"}
    end
    
    private

    def stu_assignment_params(*args)
        params.require(:student_assignment).permit(*args)
    end



end