Rails.application.routes.draw do
  root 'foods#index'
  resources :foods
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
