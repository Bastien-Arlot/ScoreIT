Rails.application.routes.draw do
  root 'home#index'
  get 'home/private'
  devise_for :users

  resources :answer_market, only: [:new, :create]
end

