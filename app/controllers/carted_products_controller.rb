class CartedProductsController < ApplicationController
  def create
    @carted_product = CartedProduct.new(
      user_id: current_user.id,
      product_id: params["product_id"],
      quantity: params["quantity"],
      status: "carted",
      order_id: nil,
    )
    if @carted_product.save
      render json: @carted_product.as_json
    else
      render json: { errors: @carted_product.errors.full_messages }
    end
  end

  def index
    @carted_products = []
    current_user.carted_products.each do |product|
      if current_user.id == product["user_id"] && product["status"] == "carted"
        @carted_products << product
      end
    end
    render json: @carted_products.as_json
  end

  def update
    @carted_product = CartedProduct.find_by(id: params["id"])
    @carted_product.product_id = params["product_id"] || @carted_product.product_id
    @carted_product.quantity = params["quantity"] || @carted_product.quantity
    @carted_product.status = params["status"] || @carted_product.status
    if @carted_product.save
      render json: @carted_product.as_json
    else
      render json: { errors: @carted_product.errors.full_messages }
    end
  end
end
