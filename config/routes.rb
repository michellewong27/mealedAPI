Rails.application.routes.draw do
  resources :create_events
  resources :favorites 
  resources :recipe_posts 
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
