class SchoolsController < ApplicationController

    def index
        @schools = School.all
        render json: @schools
    end

    def show
        @school = School.find(params[:id])
        render json: @school
    end

    def create

    end

    def update

    end

    def delete

    end
end