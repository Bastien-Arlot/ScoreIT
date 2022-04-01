Rails.application.routes.draw do

  root 'home#index'
  get 'home/private'
  get 'home/team'
  match '/404', to: 'errors#not_found', via: :all
  match '/422', to: 'errors#unacceptable', via: :all
  match '/500', to: 'errors#server_errors', via: :all


  devise_for :users, controllers: {
    omniauth_callbacks:  'users/omniauth_callbacks'
  }

  scope 'admin', module: 'admin', as: 'admin' do
  resources :users
  end


  resources :user, only: [:show, :edit, :update]

  resources :orders, only: [:create]
  resources :order_timers, only: [:create]


  resources :certificates, only: [:index]


  resources :startups, only: [:index, :new, :create, :update, :show, :destroy] do

    resources :scores, only: [:index, :new, :create, :update, :show] do

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

      resources :category_finances, except: [:index, :new, :create, :show, :update] do
        resources :answer_finances, only: [:new, :create]
      end

      resources :category_offers, except: [:index, :new, :create, :update, :destroy, :show] do
        resources :answer_offers, only: [:new, :create]
      end

    end

  end


end
