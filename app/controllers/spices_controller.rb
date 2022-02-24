class SpicesController < ApplicationController
    
    def index
        all = Spice.all
        render json: all
    end

    def create 
        new_spice = Spice.create(spice_params) 
        render json: new_spice, status: :created
    end

    def update 
        i = Spice.find(params[:id])
        i.update(spice_params)
        render json: i
    end

    def destroy
        i = Spice.find(params[:id])
        i.destroy
    end

    private
    def spice_params
        params.permit( 
            :id,
            :title,
            :image, 
            :description,
            :notes,
            :rating
        )
        end
    
end
