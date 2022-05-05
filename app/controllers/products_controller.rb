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
    product = Product.new(
      name: params["name"],
      price: params["price"],
      image_url: params["image_url"],
      description: params["description"],
    )
    product.save
    render json: product.as_json
  end

  def update
    product = Product.find_by(id: params["id"])
    product.name = params["name"] || product.name
    product.price = params["price"] || product.price
    product.image_url = params["image_url"] || product.image_url
    product.description = params["description"] || product.description
    product.save

    render json: product.as_json
  end

  def destroy
    product = Product.find_by(id: params["id"])
    product.destroy
    render json: { message: "You have successfuly deleted this product!" }
  end

  def non_existent
    render json: "Product Does Not Exist"
  end
end
