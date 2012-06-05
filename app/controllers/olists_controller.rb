class OlistsController < ApplicationController
  def create
    list = Olist.new(params[:olist])
    if list.save
      redirect_to edit_order_path(list.order_id)
    end
  end

  def destroy
    olist = Olist.find(params[:format])
    olist.destroy

    redirect_to edit_order_path(params[:id])
  end
end
