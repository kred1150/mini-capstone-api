class OrdersController < ApplicationController
  before_action :authenticate_user

  def create
    price = 0
    CartedProduct.where(order_id: nil).where(status: "carted").each do |product|
      price = price + product.product.price
    end
    @order = Order.new(
      user_id: current_user.id,
      subtotal: price,
      tax: price * 0.09,
      total: price + (price * 0.09),
    )
    if @order.save
      render json: @order.as_json
    else
      render json: { errors: @order.errors.full_messages }
    end
  end

  def show
    @order = current_user.orders.find_by(id: params["id"])
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
