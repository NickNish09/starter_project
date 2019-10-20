Rails.application.routes.draw do
  root to: 'main#index'
  devise_for :users, controllers: {
      registrations: 'users/registrations',
  }
  resources :posts
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
