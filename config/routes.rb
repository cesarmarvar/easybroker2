Rails.application.routes.draw do
  root "properties#index"

  resources :properties 

  post "/properties/new_contact" => "properties#create_contact"  
end
