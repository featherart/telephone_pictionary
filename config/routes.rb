TelephonePictionary::Application.routes.draw do
  # get "pictures/index"

  # get "pictures/create"

  # get "phrases/index"

  # get "phrases/create"

  # get "stories/index"

  # get "stories/create"
  root to: "pictures#index"

  resources :stories
  resources :pictures
  resources :phrases
end
