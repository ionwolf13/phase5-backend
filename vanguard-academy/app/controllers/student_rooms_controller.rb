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

    end

    def update

    end

    def delete

    end
    
end