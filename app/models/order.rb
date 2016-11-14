class Order < ApplicationRecord
  def getDetails
    JSON.parse self.order_details.gsub('=>', ':')
  end
end
