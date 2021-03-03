Rails.application.routes.draw do
  root 'restaurants#index'

  resources :restaurants do
    resources :reviews, only: [:new, :create]
    collection do
      # get '/restaurants/top', to: 'restaurants#top', as: 'top_restaurants'
      get :top
    end

    member do
      get :chef
    end
  end

  resources :reviews, only: :destroy
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
