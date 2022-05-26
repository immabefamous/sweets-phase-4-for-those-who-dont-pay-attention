class SweetsController < ApplicationController
    def index
        sweet = Sweet.all
        render json: sweet, only: [:id, :name], status: 200
        end
    
        def show
            sweet = Sweet.find_by(id: params[:id])
            if sweet.valid?
            render json: sweet, only: [:id, :name], status: 200
            else
            render json: {error: "Sweet not found"}, status: 404
            end
        end
end
