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

  #Peak Reviews#
  get "/peak_reviews" => "peak_reviews#index"
  post "/peak_reviews" => "peak_reviews#create"
  get "/peak_reviews/:id" => "peak_reviews#show"

  #Rec Area Reviews#
  get "/rec_area_reviews" => "rec_area_reviews#index"
  post "/rec_area_reviews" => "rec_area_reviews#create"
  get "/rec_area_reviews/:id" => "rec_area_reviews#show"
  

  #Users#
  post "/users" => "users#create"

  #Session#
  post "/sessions" => "sessions#create"
end
