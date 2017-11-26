Rails.application.routes.draw do
  root 'welcome#index'

  namespace :admin do
    resources :users, only: [:index, :destroy]
    root 'users#index'
  end

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
