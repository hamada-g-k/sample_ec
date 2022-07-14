Rails.application.routes.draw do
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
end
