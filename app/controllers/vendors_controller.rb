class VendorsController < ApplicationController
    def index
    vendor = Vendor.all
    render json: vendor, only: [:id, :name], status: 200
    end

    def show
        vendor = Vendor.find_by(id: params[:id])
        if vendor.valid?
        render json: vendor, serializer: VendorSweetsSerializer
        else
        render json: {error: "Vendor not found"}
        end
    end
    
end
