Mytems::Application.routes.draw do
  resources :items, :boxes, :categories

  resource :search

  # Search is the main controller for the app
  root :to => 'items#index'
end
