class HomeController < ApplicationController
  helper_method :sort_column, :sort_direction

  def index
  end

  def contact_us
  end

  def menu
    @section = "-1"
    if params[:section]
      @section = params[:section]
    end

    # all when section = -1
    if @section == "-1"
      @food_items = FoodItem.all.order("#{sort_column} #{sort_direction}")
    else
    # else section == any
      @food_items = FoodItem.where(section: @section).order("#{sort_column} #{sort_direction}")
    end
  end

  private
    def sort_column
      FoodItem.column_names.include?(params[:sort]) ? params[:sort] : "name"
    end

    def sort_direction
      %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
    end
end
