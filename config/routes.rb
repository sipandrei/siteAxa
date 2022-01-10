Rails.application.routes.draw do
  resources :categories
  devise_for :views
  devise_for :users, controllers: {registrations: 'registrations'}
  resources :users, only: %i[index show]
  root 'articles#index'
  resources :authors
  resources :articles
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
