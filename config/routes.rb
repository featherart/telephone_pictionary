TelephonePictionary::Application.routes.draw do
  
  root to: "storylines#index"

  resources :storylines
  resources :pictures
  resources :phrases
end
