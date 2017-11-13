Rails.application.routes.draw do
  devise_for :users
  root 'welcome#index'

  resources :welcomes, only: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :countries, shallow: true do
    resources :cities, shallow: true do
      resources :universities, shallow: true do
        resources :teachers
        resources :faculties, shallow: true do
          resources :kafedras, shallow: true do
            resources :groups, shallow: true do
              resources :students
            end
          end
        end
      end
    end
  end
end
