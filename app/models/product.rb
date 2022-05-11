class Product < ApplicationRecord
  validates :name, presence: true
  validates :price, presence: true
  validates :price, numericality: { greater_than: 0 }
  validates :description, length: { in: 10..500 }

  def supplier
    Supplier.find_by(id: supplier_id)
  end

  def images
    Image.where(product_id: id)
  end

  def friendly_created_at
    created_at.strftime("%B %e, %Y")
  end

  def is_discounted?
    price < 10
  end

  def tax
    price.to_f * 0.09
  end

  def total
    price + tax
  end
end
