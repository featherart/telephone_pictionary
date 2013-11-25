TelephonePictionary::Application.routes.draw do
  
  #devise_for :users

  devise_for :users, path_names: {sign_in: "login", sign_out: "logout"}

  root to: "storylines#index"

  resources :storylines
  resources :pictures
  resources :phrases
end
