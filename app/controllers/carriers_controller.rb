class CarriersController < ApplicationController
    def new
        @carrier = Carrier.new
    end
    
    def create
        @carrier = Carrier.create(carrier_params)

        if @carrier.save
            redirect_to @carrier
        else
            render 'new'
        end
    end

    def show
        @carrier = Carrier.find(params[:id])
    end
    
    def destroy
        @carrier.destroy
        redirect_to root_path
    end
    
    def edit
        @carrier = Carrier.find(params[:id])
    end
    
    def update
        @carrier = Carrier.find(params[:id])
        if @carrier.update(carrier_params)
        
        else
            render 'edit'
        end
    end
    
    def index
        @carriers = Carrier.all
    end

private
    def carrier_params
        params.require(:carrier).permit(:name, :url)
    end
    def find_carrier
        @carrier = Carrier.find(params[:id])
    end
end
