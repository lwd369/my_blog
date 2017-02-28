Rails.application.routes.draw do
  root 'blogs#index'

  resources :blogs, only:[:index, :show]

  namespace :admin do
    root to:'dashboard#index', as: 'root'
    resources :blogs
    resource :dashboard, only: [:index] do
      get '/status', action: 'status'
      get '/table', action: 'table'
    end
  end

  namespace :api do
    get '/uptoken', to: 'qiniu_manager#uptoken'
  end
end