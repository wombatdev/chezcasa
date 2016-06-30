Rails.application.routes.draw do

  resources :users
  resources :dishes

 root to: 'dishes#index'

end
