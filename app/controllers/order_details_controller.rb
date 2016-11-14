class OrderDetailsController < ApplicationController

  def addToCart
    # find the item by the params id
    item = params[:food_item_id]
    # pass the item to the addToCart method
    add(item)
    redirect_to food_item_path(item)
  end

  def index
    @order = Order.new
    session[:cart] ||= {}
    @order_details = session[:cart]
    @total = 0

    @order_details.each do |itemKey, quantity|
      item = FoodItem.find(itemKey)
      @total += item.price * quantity
    end
  end

  def deleteItem
    key = params[:food_item_id]
    @order_details = session[:cart]

    if @order_details[key] > 1
      @order_details[key] -= 1
    else
      @order_details.delete(key)
    end
    redirect_to order_details_path
  end

  def addItem
    key = params[:food_item_id]
    @order_details = session[:cart]

    if @order_details[key] > 1
      @order_details[key] += 1
    end
    redirect_to order_details_path
  end

  private
    def add(item)
      # session[:cart] || session[:cart] = {}
      session[:cart] ||= {}
      existed = false
      # set the value in an array in the hash
      session[:cart].each do |key, value|
      # if item already exist, add 1 to the existing quantity
        if key == item
          existed = true
          session[:cart][key] = value + 1
          break
        end
      end
      # unless existed, update cart. or if the item doesn't exist update the cart
      unless existed
        session[:cart][item] = 1
      end
    end
end
