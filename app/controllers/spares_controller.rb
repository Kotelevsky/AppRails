class SparesController < ApplicationController
  def create
    spare = Spare.new(params[:spare])
    if spare.save
      redirect_to :action => "index"
    end
  end

  def index
    @spare = Spare.all
  end

  def edit
    @spare = Spare.find(params[:id])
  end

  def update
    @spare = Spare.find(params[:id])
    if @spare.update_attributes(params[:spare])
      redirect_to spares_path
    end
  end
end
