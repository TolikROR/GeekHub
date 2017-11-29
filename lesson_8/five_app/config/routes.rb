Rails.application.routes.draw do
  root 'home#index'

  devise_for :users

  namespace :admin do
    resources :users, only: %i[index destroy]
    root 'users#index'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
