class RoomsController < ApplicationController
    
    def index
        @rooms = Room.all
        render json: Room.all.to_json({include: [:instructor,:users], except: [:created_at, :updated_at]})
    end

    def show
        @room = Room.find(params[:id])
        render json: @room.to_json({include: [:student_rooms]})
    end

    def create
        @room = Room.create(room_params(:user_id, :room_id))
        @room = Room.find(params[:room_id])

        render json: @room.to_json({include: [:instructor => {:include => [:assignments => {:include => [:stu_rooms]}]}]})
    end

    def update
        @room = Room.find(params[:id])
        @room.update(room_params())
        render json: @room
    end

    def destroy
        @room = Room.find(params[:id])
        user = @room.user
        @room.destroy
        render json: user.to_json({include: [:rooms => {}]})
    end

    private

    def room_params(*args)
        params.require(:room).permit(*args)
    end
end