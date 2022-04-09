class LineItem < ApplicationRecord
  belongs_to :model, optional: true
  belongs_to :product
  belongs_to :cart, optional: true

  def total_price
    product.price * quantity
  end
end
