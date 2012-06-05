class SlistsController < ApplicationController
  
  def create
    list = Slist.new(params[:slist])
    if list.save
      redirect_to edit_work_path(list.work_id)
    end
  end

  def update
    @list = Slist.find(params[:id])
    if @list.update_attributes(params[:slist])
      redirect_to work_path(@list.work_id)
    end
  end

  def destroy
    list = Slist.find(params[:id])
    list.destroy

    redirect_to work_path(params[:format])
  end
end
