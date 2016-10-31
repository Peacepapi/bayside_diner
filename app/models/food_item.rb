class FoodItem < ApplicationRecord
  belongs_to :section
  belongs_to :order
  validates :name, :section, :price, :description, presence: true
  validates :price, numericality: true

  def image_url
    if remote_image_url.present?
        remote_image_url
    else
      'http://placehold.it/320x240'
      #"http://loremflickr.com/320/240/#{name.gsub(' ','+')}"
    end
  end

  def priceFormatted
    ActionController::Base.helpers.number_with_precision(self.price, :precision => 2)
  end
end
