Rails.application.routes.draw do
  get 'welcome/index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'

  namespace :admin do
    resources :users, only: %i[index destroy]
    root 'users#index'
  end
end
