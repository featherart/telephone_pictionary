TelephonePictionary::Application.routes.draw do
  
  root to: "stories#index"

  resources :stories
  resources :pictures
  resources :phrases
end
