Rails.application.routes.draw do
get "/peaks/:id" => "peaks#show"
end
