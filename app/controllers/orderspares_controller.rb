class OrdersparesController < ApplicationController
  def show
    @spare = Spare.all
    @flag = Flag.find(1)
    @warehouse = Warehouse.find(params[:id]).orderspares
  end

  def create
    order = Orderspare.new(params[:orderspare])
    if order.save
      redirect_to orderspare_path(order.warehouse_id)
    else
      redirect_to orderspare_path(params[:warehouse_id])
    end
  end

  def edit
    @flag = Flag.all
    @spare = Spare.all
    @orderspare = Orderspare.find(params[:id])
  end

  def update
    @orderspare = Orderspare.find(params[:id])
    if @orderspare.update_attributes(params[:orderspare])
      redirect_to orderspare_path(@orderspare.warehouse_id)
    end
  end
end
