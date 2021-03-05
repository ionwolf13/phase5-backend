class StudentAssignmentsController < ApplicationController

    def index
        @stu_rooms = StudentRoom.all
        @single_stu_room = StudentRoom.find_by(user_id: params[:user_id], room_id: params[:room_id])
        
        render json: @single_stu_room
    end

    def show
        @stu_room = StudentRoom.find(params[:id])
        render json: @stu_room
    end

    def create
        @stu_room = StudentRoom.create(stu_room_params(:user_id, :room_id))
        render json: @stu_room
    end

    def update
        
    end

    def destroy
        @stu_room = StudentRoom.find(params[:id])
        
        user = @stu_room.user
        @stu_room.delete
        render json: user
    end
    
    private

    def stu_room_params(*args)
        params.require(:student_room).permit(*args)
    end



end