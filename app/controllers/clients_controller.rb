class ClientsController < ApplicationController
  def index
    @client = Client.all
  end

  def create
    client = Client.new(params[:client])
    if client.save
      redirect_to edit_client_path(client.id)
    end
  end

  def edit
    @client = Client.find(params[:id])
  end

  def update
    @client = Client.find(params[:id])
    if @client.update_attributes(params[:client])
      redirect_to clients_path
    end
  end
end
