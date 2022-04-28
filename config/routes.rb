Rails.application.routes.draw do
  # PEAKS #
  get "/peaks" => "peaks#index"
  post "/peaks" => "peaks#create"
  get "/peaks/:id" => "peaks#show"
  patch "/peaks/:id" => "peaks#update"
  delete "/peaks/:id" => "peaks#destroy"

  # Rec Areas#
  get "/rec_areas" => "rec_areas#index"
  get"/rec_areas/:id" => "rec_areas#show"
  
  #Activities#
  get "/activities" => "activities#index"
  get "/activities/:id" => "activities#show"

  #Users#
  post "/users" => "users#create"

  #Session#
  post "/sessions" => "sessions#create"
end
