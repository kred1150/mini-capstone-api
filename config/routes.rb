Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/products_all", controller: "products", action: "get_all_products"
  get "/one_product/:id" => "products#one_product"
  get "/non_existent_product" => "products#non_existent"
end
