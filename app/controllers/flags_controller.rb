class FlagsController < ApplicationController
  def index
    @flag = Flag.all
  end

  def create
    flag = Flag.new(params[:flag])
    if flag.save
      redirect_to flags_path
    end
  end

  def edit
    @flag = Flag.find(params[:id])
  end

  def update
    @flag = Flag.find(params[:id])
    if @flag.update_attributes(params[:flag])
      redirect_to flags_path
    end
  end
end
