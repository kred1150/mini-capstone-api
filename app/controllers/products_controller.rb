class ProductsController < ApplicationController
  def get_all_products
    all_products = Product.all
    render json: all_products.as_json
  end

  def one_product
    product = Product.find_by(id: params["id"])
    if product == nil
      redirect_to "/non_existent_product"
    else
      render json: product.as_json
    end
  end

  def non_existent
    render json: "Product Does Not Exist"
  end
end
