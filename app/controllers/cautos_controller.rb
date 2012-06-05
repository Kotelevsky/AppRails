class CautosController < ApplicationController
  def show
    @client = Client.find(params[:id])
  end

  def create
    auto = Cauto.new(params[:cauto])
    if auto.save
      redirect_to cauto_path(auto.client_id)
    end
  end

  def edit
    @cauto = Cauto.find(params[:id])
  end

  def update
    @cauto = Cauto.find(params[:id])
    if @cauto.update_attributes(params[:cauto])

      redirect_to cauto_path(@cauto.client_id)
    end
  end
end
