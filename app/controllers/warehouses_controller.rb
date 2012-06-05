class WarehousesController < ApplicationController
  def index
    @warehouse = Warehouse.all
  end

  def create
    warehouse = Warehouse.new(params[:warehouse])
    if warehouse.save
      redirect_to warehouses_path
    end
  end

  def edit
    @warehouse = Warehouse.find(params[:id])
  end

  def update
    @warehouse = Warehouse.find(params[:id])
    if @warehouse.update_attributes(params[:warehouse])
      redirect_to warehouses_path
    end
  end
end
