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

  def create
    new_product = Product.new(
      name: params["name"],
      price: params["price"],
      image_url: params["image_url"],
      description: params["description"],
    )
    new_product.save
    render json: new_product.as_json
  end

  def non_existent
    render json: "Product Does Not Exist"
  end
end
