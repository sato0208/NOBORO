Rails.application.routes.draw do
  root to: 'climbers/gyms#index'

  devise_for :gyms, controllers: {
    sessions: 'gyms/sessions',
    registrations: 'gyms/registrations'
  }
  get '/' => 'tasks#index'
  namespace :gyms do
    resources :favorites, only: [:index]
    resources :climbers, only: [:index]
    resources :gyms, only: [:edit, :update, :show]
    resources :genres, only: [:create, :index, :destroy, :new, :show, :edit, :update]
    resources :grades, only: [:create, :index, :destroy, :edit, :update]
    resources :tasks, only: [:create, :index, :destroy, :new, :show, :edit, :update]
    resources :infos, only: [:create, :index, :destroy]
    resources :done_tasks, only: [:index]
  end

  devise_for :climbers, controllers: {
    sessions: 'climbers/sessions',
    registrations: 'climbers/registrations',
    passwords: 'climbers/passwords'
  }

  scope module: :climbers do
    get 'gyms/search' => 'gyms#search'
    get 'following_climbers' => 'climbers#following_climbers'
    resources :climbers, only: [:show, :edit, :update]do
      member do
        get :follower, :following
      end
    end
    resources :favorites, only: [:index]
    resources :gyms, only: [:index, :show], shallow: true do
      resource :favorites, only: [:create, :destroy]
      get :favorites, on: :collection
    end
  end
  # urlにclimbersを含めたくないのでわざとscopeから外してます
  resources :genres, only: [:create, :index, :destroy, :new, :show, :edit, :update]
  resources :grades, only: [:create, :index, :destroy, :edit, :update]
  resources :tasks, only: [:index, :destroy, :show]
  resources :infos, only: [:index]
  resources :done_tasks, only: [:index, :create, :update, :show, :destroy]
  resources :trophys, only: [:create, :index]
  resources :relationships, only: [:create, :destroy]
end
