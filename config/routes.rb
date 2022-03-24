Rails.application.routes.draw do
  root 'home#index'
  get 'home/private'
  devise_for :users

  resources :answer_markets, only: [:new, :create]
  resources :startups
  resources :scores do
    resources :category_teams, except: [:index, :new, :create, :show, :update] do
      resources :answer_teams, only: [:new, :create]
    end
  end
end
