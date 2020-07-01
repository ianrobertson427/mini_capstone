Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
   namespace :api do
     get "/drums" => "products#index"
     get "/sales" => "products#sales"
   end
end
