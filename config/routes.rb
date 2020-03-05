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
end
