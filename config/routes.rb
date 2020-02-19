Rails.application.routes.draw do


  # get '/restaurants', to: 'restaurants#index'
  # get 'restaurants/show'
  # get 'restaurants/new'
  # get 'restaurants/edit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :restaurants

  resources :restaurants do
    resources :reviews, only: [ :new, :create ]
  end

end
