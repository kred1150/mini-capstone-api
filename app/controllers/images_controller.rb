class ImagesController < ApplicationController
  def index
    @images = Supplier.all
    render template: "images/index"
  end

  def show
    @image = Image.find_by(id: params["id"])
    render template: "images/show"
  end
end
