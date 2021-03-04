class StudentRoomsController < ApplicationController

    def index
        @stu_rooms = StudentRoom.all
        render json: @stu_rooms
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

    def delete
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