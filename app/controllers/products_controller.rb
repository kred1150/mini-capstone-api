class ProductsController < ApplicationController
  def index
    products = Product.all
    render json: products.as_json
  end

  def show
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
