Rails.application.routes.draw do
  namespace :gyms do
    get 'infos/index'
    get 'infos/create'
    get 'infos/destroy'
  end
  namespace :gyms do
    get 'genres/index'
    get 'genres/update'
    get 'genres/create'
    get 'genres/new'
    get 'genres/edit'
    get 'genres/destroy'
  end
  namespace :gyms do
    get 'tasks/index'
    get 'tasks/update'
    get 'tasks/create'
    get 'tasks/new'
    get 'tasks/edit'
    get 'tasks/destroy'
  end
  namespace :gyms do
    get 'grades/index'
    get 'grades/update'
    get 'grades/create'
    get 'grades/new'
    get 'grades/edit'
    get 'grades/destroy'
  end
  namespace :gyms do
    get 'climbers/index'
  end
  namespace :gyms do
    get 'gyms/edit'
    get 'gyms/update'
  end
  namespace :climbers do
    get 'grades/index'
    get 'grades/show'
  end
  namespace :climbers do
    get 'done_tasks/index'
    get 'done_tasks/show'
    get 'done_tasks/update'
    get 'done_tasks/create'
  end
  namespace :climbers do
    get 'tasks/index'
    get 'tasks/show'
  end
  namespace :climbers do
    get 'trophys/index'
    get 'trophys/create'
  end
  namespace :climbers do
    get 'gyms/index'
    get 'gyms/show'
    get 'gyms/search'
  end
  namespace :climbers do
    get 'climbers/show'
    get 'climbers/edit'
    get 'climbers/update'
  end
  devise_for :gyms
  devise_for :climbers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
