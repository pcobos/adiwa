Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :ceremonies, only: [:index, :show, :new, :create] do
    collection do
      get 'own_ceremonies'
    end
  end

  resources :sessions, only: [] do
    resources :bookings, only: %i[create]
  end

  resources :users do
    #resources :bookings, only: %i[index]
    #resources :ceremonies, only: [:by_user]
  end

  # # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :ceremonies, only: [:index, :show, :new, :create, :destroy] do
  #   resources :bookings, only: [:new, :create]
  # end

  # resources :users, only: [:index, :show, :create, :new] do
  #   resources :bookings, only: [:index]
  #   resources :ceremonies, only: [:index]
  # end


end
