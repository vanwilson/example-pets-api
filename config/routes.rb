Rails.application.routes.draw do
  post "/users" => "users#create"

  post "/sessions" => "sessions#create"

  get "/pets" => "pets#index"
  post "/pets" => "pets#create"
  get "/pets/:id" => "pets#show"
  patch "/pets/:id" => "pets#update"
end
