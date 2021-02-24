class RoomsController < ApplicationController
    
    def index
        @rooms = Room.all
        render json: @rooms
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