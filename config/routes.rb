Rails.application.routes.draw do
  resources :signups
  resources :activities, only: [:index, :show]
  resources :campers, only: [:index, :new, :show, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
