class ImagesController < ApplicationController
  def index
    @images = Image.all
    render template: "images/index"
  end

  def show
    @image = Image.find_by(id: params["id"])
    render template: "images/show"
  end

  def create
    @image = Image.new(
      url: params["url"],
      product_id: params["product_id"],
    )
    if @image.save
      render template: "images/show"
    else
      render json: { errors: @image.errors.full_messages }, status: 422
    end
  end
end
