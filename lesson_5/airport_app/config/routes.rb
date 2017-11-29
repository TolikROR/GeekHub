Rails.application.routes.draw do
  root 'welcome#index'

  resources :countries do
    resources :cities, shallow: true do
      resources :aircrafts
    end
  end

  resource :genders, only: %i[new show]

  resources :flights do
    resources :takeoff_airports
    resources :longing_airports
  end

  resources :users do
    resources :orders
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
