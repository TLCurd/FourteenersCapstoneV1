Rails.application.routes.draw do
  # PEAKS #
  get "/peaks" => "peaks#index"
  post "/peaks" => "peaks#create"
  get "/peaks/:id" => "peaks#show"
  patch "/peaks/:id" => "peaks#update"
  delete "/peaks/:id" => "peaks#destroy"
end
