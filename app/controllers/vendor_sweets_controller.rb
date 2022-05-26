class VendorSweetsController < ApplicationController
    def create
        vendor_sweet = VendorSweet.create!(vendor_sweet_params)
        if vendor_sweet.save
        render json: vendor_sweet, status: 200
        else
        render json: {error: "incorrect info"}
        end
    end

    def destroy
        vendor_sweet = VendorSweet.find_by(id: (params[:id]))
        if vendor_sweet.valid?
        vendor_sweet.delete, status: 200
        else
        render json: {error: "VendorSweet not found"}
        end
    end


    private

    def vendor_sweet_params
        params.permit(:price, :vendor_id, :sweet_id)
    end
end
