class LocatedsController < ApplicationController
    
    def new
        @located = Located.new
    end

    def create
        @located = Located.create(located_params)
        
        if @located.save
            redirect_to @located
        else
            render 'new'
        end
    end

    def update
        @located = Located.find(params[:id])
        if @located.update(located_params)
        
        else
            render 'edit'
        end
    end

    def edit
        @located = Located.find(params[:id])
    end

    def destroy
        @located = Located.find(params[:id])

        @located.destroy
        redirect_to root_path
    end
    
    def index
        @locateds = Located.all
    end
    
    def show
        @located = Located.find(params[:id])
    end

private
    def located_params
        params.require(:located).permit(:address)
    end
    def find_located
        @locate = Located.find(params[:id])
    end
end
