class Order < ApplicationRecord
  belongs_to :user
  has_many :carted_products
  has_many :products, through: :carted_products

  def self.price_of_cart
    price = 0
    cart = CartedProduct.where(order_id: nil).where(status: "carted")
    cart.each do |product|
      price = price + product.product.price
    end
    return price
  end
end
