class OrdersController < ApplicationController
  def show
    @client = Client.find(params[:id])
  end

  def create
    order = Order.new(params[:order])
    if order.save
      redirect_to order_path(order.client_id)
    end
  end

  def edit
    @order = Order.find(params[:id])
  end
end
