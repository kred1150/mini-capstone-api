class CartedProduct < ApplicationRecord
  belongs_to :user
  belongs_to :product
  belongs_to :order, optional: true

  def self.update_cart(cart)
    cart.each do |product|
      product.update(status: "purchased")
      product.update(order_id: "id")
    end
  end
end
