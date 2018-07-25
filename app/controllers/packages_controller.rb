class PackagesController < ApplicationController
    def new
        @package = Package.new
        @carriers = Carrier.all
        @locateds = Located.all
        @client = Client.all
    end

    def create
        @package = Package.create(package_params)
        
        if @package.save
            redirect_to @package
        else
            render 'new'
        end
    end

    def update
        @package = Package.find(params[:id])
        if @package.update(package_params)
        
        else
            render 'edit'
        end
    end

    def edit
        @package = Package.find(params[:id])
    end

    def destroy
        @package = Package.find(params[:id  ])

        @package.destroy
        redirect_to root_path
    end
    
    def index
        @packages = Package.all
    end
    
    def show
        @package = Package.find(params[:id])
    end

private
    def package_params
        params.require(:package).permit(:tracking, :arrived_date, :departed_date, :carrier_id, :client_id, :located_id)
    end
    def find_package
        @package = Package.find(params[:id])
    end
end
