class OrdersController < ApplicationController
  before_action :authenticate_user

  def create
    shopping_cart = CartedProduct.where(order_id: nil).where(status: "carted")
    @order = Order.new(
      user_id: current_user.id,
      subtotal: Order.price_of_cart(shopping_cart),
      tax: Order.tax_of_cart,
      total: Order.total_cart,
    )
    if @order.save
      CartedProduct.update_cart(shopping_cart)
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
