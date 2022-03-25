Rails.application.routes.draw do
  root 'home#index'
  get 'home/private'
  devise_for :users, controllers: {
    omniauth_callbacks:  'users/omniauth_callbacks'
  }

  resources :startups, only: [:index, :new, :create, :update] do

    resources :scores, only: [:index, :new, :create, :update] do

      resources :category_markets, except: [:index, :new, :create, :update, :destroy, :show] do
        resources :answer_markets, only: [:new, :create]
      end

      resources :category_teams, except: [:index, :new, :create, :show, :update] do
        resources :answer_teams, only: [:new, :create]
      end

      resources :category_innovations, except: [:index, :new, :create, :show, :update] do
        resources :answer_innovations, only: [:new, :create]
      end

      resources :category_strategies, except: [:index, :new, :create, :show, :update] do
        resources :answer_strategies, only: [:new, :create]
      end

    end
    
  end


end
