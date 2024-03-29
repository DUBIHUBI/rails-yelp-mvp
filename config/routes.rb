Rails.application.routes.draw do
  # get 'reviews/new'
  # get 'reviews/create'
  root to: "restaurants#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :restaurants, only: [:index, :new, :show, :create] do
    resources :reviews, only: [:create]
  end
end
