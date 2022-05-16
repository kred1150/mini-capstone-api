class OrdersController < ApplicationController
  before_action :authenticate_user
  
  def create
    @order = Order.new(
      user_id: current_user.id,
      product_id: params["product_id"],
      quantity: params["quantity"],
      subtotal: Product.find_by(id: params["product_id"]).price * params["quantity"].to_i,
      tax: Product.find_by(id: params["product_id"]).tax * params["quantity"].to_i,
      total: (Product.find_by(id: params["product_id"]).price + Product.find_by(id: params["product_id"]).tax) * params["quantity"].to_i,
    )
    if @order.save
      render json: @order.as_json
    else
      render json: { errors: @order.errors.full_messages }
    end
  end

  def show
    @order = current_user.orders.find_by(id: params["id"]
    render json: @order.as_json
  end

  def index
    @order = current_user.orders
    render json: @order.as_json
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
