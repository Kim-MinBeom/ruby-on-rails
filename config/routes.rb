Rails.application.routes.draw do

  resources :users
  root :to=> "home#index"
  resources :books
  resources :products
  resources :posts do
    resources :comments
  end
  get 'home/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
