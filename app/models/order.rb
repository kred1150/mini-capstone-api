class Order < ApplicationRecord
  belongs_to :user
  has_many :carted_products
  has_many :products, through: :carted_products

  def self.price_of_cart(cart)
    @price = 0
    cart.each do |product|
      @price = @price + (product.product.price * product.quantity)
    end
    return @price
  end

  def self.tax_of_cart
    tax = @price * 0.09
    return tax
  end

  def self.total_cart
    total = @price * 1.09
    return total
  end
end
