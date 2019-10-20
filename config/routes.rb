Rails.application.routes.draw do
  namespace :v1 do
    resources :posts
  end
  resources :posts
  root to: 'main#index'
  devise_for :users, controllers: {
      registrations: 'users/registrations',
  }
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :v1, defaults: { format: :json } do
  end
end
