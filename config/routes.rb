Rails.application.routes.draw do
  root 'store/top#index'

  namespace :store do
    root 'top#index'
    get 'top' =>    'top#index'
    get 'signup' => 'users#new', as: :signup
    get 'login'  => 'sessions#new', as: :login
    post 'login'  => 'sessions#create'
    delete 'logout' => 'sessions#destroy', as: :logout
    resource :sessions, only: [ :create, :destroy ]
    resources :users
  end

  namespace :admin do
    root 'top#index'
    get 'top' => 'top#index'
  end
end
