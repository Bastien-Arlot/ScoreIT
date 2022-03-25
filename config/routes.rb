Rails.application.routes.draw do
  root 'home#index'
  get 'home/private'
  devise_for :users

  resources :startups, only: [:index, :new, :create, :update]
  
  resources :scores, only: [:index, :new, :create, :update] do
    resources :category_markets, except: [:index, :new, :create, :update, :destroy, :show] do
          resources :answer_markets, only: [:new, :create]
    end
    resources :category_teams, except: [:index, :new, :create, :show, :update] do
      resources :answer_teams, only: [:new, :create]
    end
  end
end
