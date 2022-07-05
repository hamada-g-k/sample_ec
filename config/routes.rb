Rails.application.routes.draw do
  root 'application#hello'

  namespace :store do
    root 'top#index'
    get 'top' => 'top#index'
  end
end
