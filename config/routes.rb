Rails.application.routes.draw do
  root to: 'climbers/gyms#index'
  
  devise_for :gyms, controllers: {
    sessions: 'gyms/sessions'
  }

  namespace :gyms do
    resources :favorites, only: [:index]
    resources :climbers, only: [:index, :destroy]
    # resources :gyms, only: [:edit, :update]
    resources :genres, only: [:create, :index, :destroy, :show, :edit, :update]
    resources :grades, only: [:create, :index, :destroy, :edit, :update]
    resources :tasks, only: [:create, :index, :destroy, :edit, :update]
    resources :infos, only: [:create, :index, :destroy, :edit, :update]
    resources :done_tasks, only: [:index]
  end
  # urlにgymsを含めたくないのでわざとnamespaceから外してます
  scope module: :gyms do
    resources :gyms, only: [:edit, :update]
  end

  devise_for :climbers, controllers: {
    sessions: 'climbers/sessions',
    registrations: 'climbers/registrations',
    passwords: 'climbers/passwords'
  }

  scope module: :climbers do
    get 'gyms/search' => 'gyms#search'
    get 'gyms/rank/:id' => 'gyms#rank', as: :rank
    get 'climbers/trophy/:id' => 'climbers#trophy', as: :trophy
    get 'climbers/search' => 'climbers#search', as: :climber_search
    get 'following_climbers' => 'climbers#following_climbers'
    resources :climbers, only: [:show, :edit, :update, :index]do
      member do
        get :follower, :following
      end
    end
    resources :favorites, only: [:index] do
      get 'gym_favo' => 'favorites#gym_favo', as: :gym_favo
    end
    resources :gyms, only: [:index, :show], shallow: true do
      resource :favorites, only: [:create, :destroy]
      get :favorites, on: :collection
    end
  end
    # urlにclimbersを含めたくないのでわざとscopeから外してます
    get 'homes/about' => 'homes#about', as: :about
    get 'homes/top' => 'homes#top', as: :top
    post '/homes/guest_sign_in', to: 'homes#new_guest'

    resources :genres, only: [:create, :index, :destroy, :new, :show, :edit, :update]
    resources :tasks, only: [:show]
    resources :infos, only: [:index]
    resources :done_tasks, only: [:index, :create, :update, :destroy]
    resources :trophys, only: [:create]
    resources :relationships, only: [:create, :destroy]
    resources :battles, only: [:create, :destroy, :update, :index]
    resources :notifications, only: [:create, :destroy, :update, :index]
    resources :battle_historys, only: [:create, :index]
end
