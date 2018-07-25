class ClientsController < ApplicationController
    def index
        @clients = Client.all
    end
    def new
        @client = Client.new
    end
    def create
        @client = Client.create(client_params)
        
        if @client.save
            redirect_to @client
        else
            render 'new'
        end
    end
    def show
        @client = Client.find(params[:id])
    end
    def destroy
        @client.destroy
        redirect_to root_path
    end
    def update
        @client = Client.find(params[:id])
        if @client.update(client_params)
        
        else
            render 'edit'
        end
            
    end
    def edit
        @client = Client.find(params[:id])
    end
    
private
    def client_params
        params.require(:client).permit(:name, :phone, :address)
        
    end
    def find_client
        @client = Client.find(params[:id])
    end
    
end
