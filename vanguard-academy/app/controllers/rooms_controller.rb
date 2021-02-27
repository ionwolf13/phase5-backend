class RoomsController < ApplicationController
    
    def index
        @rooms = Room.all
        render json: Room.all.to_json({include: [:instructor,:users], except: [:created_at, :updated_at]})
    end

    def show
        @room = Room.find(params[:id])
        render json: @room
    end

    def create

    end

    def update

    end

    def delete

    end
end