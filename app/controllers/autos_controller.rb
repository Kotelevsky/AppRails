class AutosController < ApplicationController
  def index
    @auto = Auto.all
  end

  def create
    auto = Auto.new(params[:auto])
    if auto.save
      redirect_to autos_path
    end
  end

  def edit
    @auto = Auto.find(params[:id])
  end

  def update
    @auto = Auto.find(params[:id])
    if @auto.update_attributes(params[:auto])
      redirect_to autos_path
    end
  end
end
