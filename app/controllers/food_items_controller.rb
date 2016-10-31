class FoodItemsController < ApplicationController
  before_action :set_food_item, only: [:show, :edit]

  def index
    @food_items = FoodItem.all
  end

  def new
    @food_item = FoodItem.new
  end

  def create
    @food_item = FoodItem.new(food_item_params)
    if @food_item.save
      redirect_to food_items_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
    def set_food_item
      @food_item = FoodItem.find(params[:id])
    end

    def food_item_params
      params.require(:food_item).permit(:name, :description, :price, :section_id, :remote_image_url)
    end

end
