Rails.application.routes.draw do

  devise_for :users
  resources :users
  resources :dishes

  root to: 'dishes#index'

  resources :users do
        member do
            get 'register_chef'
            post 'register_chef'
        end
    end

    resources :dishes do
        member do
            get 'purchase'
            post 'purchase'
        end
    end

end
