class OrdersController < ApplicationController
  def create
    @order = Order.new(
      user_id: current_user.id,
      product_id: params["product_id"],
      quantity: params["quantity"],
      subtotal: Product.find_by(id: params["product_id"]).price * params["quantity"],
      tax: Product.find_by(id: params["product_id"]).tax * params["quantity"],
      total: (Product.find_by(id: params["product_id"]).price + Product.find_by(id: params["product_id"]).tax) * params["quantity"],
    )
    if @order.save
      render json: @order.as_json
    else
      render json: { errors: @order.errors.full_messages }
    end
  end

  def show
    @order = Order.find_by(id: params["id"])
    if @order.user_id == current_user.id
      render json: @order.as_json
    else
      render json: { messages: "You are not the user of this order!" }
    end
  end

  def index
    @order = Order.all
    if @order.user_id == current_user.id
      render json: @order.as_json
    else
      render json: { messages: "You are not the user of this order!" }
    end
  end

  def update
    @order = Order.find_by(id: params["id"])
    @order.user_id = params["user_id"] || @order.user_id
    @order.product_id = params["product_id"] || @order.product_id
    @order.quantity = params["quantity"] || @order.quantity
    @order.subtotal = params["subtotal"] || @order.subtotal
    @order.tax = params["tax"] || @order.tax
    @order.total = params["total"] || @order.total
    if @order.save
      render json: @order.as_json
    else
      render json: { errors: @order.errors.full_messages }
    end
  end
end
