Rails.application.routes.draw do
  root 'welcome#index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :admin do
    root 'users#index'
    resources :users, only: [:index, :destroy]
  end

end
