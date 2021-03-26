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
        @stu_assignment = StudentAssignment.create(stu_assignment_params(:user_id, :room_id))
        render json: @stu_assignment
    end

    def update
        
    end

    def destroy
        @stu_assignment = StudentAssignment.find(params[:id])
        @stu_assignment.delete
        render json: {:messageL "DELETED"}
    end
    
    private

    def stu_assignment_params(*args)
        params.require(:student_assignment).permit(*args)
    end



end