Rails.application.routes.draw do
  resources :posts
  root to: 'main#index'
  devise_for :users, controllers: {
      registrations: 'users/registrations',
  }
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
