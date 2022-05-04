class ProductsController < ApplicationController
  def get_all_products
    all_products = Product.all
    render json: all_products.as_json
  end

  def one_product
    product = Product.find_by(id: params["id"])
    render json: product.as_json
  end
end
