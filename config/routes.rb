Rails.application.routes.draw do
  resources :restaurants do
    collection do
      # get '/restaurants/top', to: 'restaurants#top', as: 'top_restaurants'
      get :top
    end

    member do
      get :chef
    end
  end
  # /restaurants/top
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
