class OrdersController < ApplicationController
  def create
    @order = Order.new(order_params)
    @order.order_details = session[:cart]

    if @order.save
      redirect_to order_path(@order)
    else
      redirect_to root_path
    end
  end

  def show
    @order = Order.find(params[:id])
    @total = 0

    @order.getDetails.each do |itemKey, quantity|
      item = FoodItem.find(itemKey)
      @total += item.price * quantity
    end
  end

  private
    def order_params
      params.require(:order).permit(:customer_name, :address, :phone)
    end
end
