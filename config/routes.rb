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

  constraints subdomain: 'api' do
    namespace :api, path: '/' do
      get '/uptoken', to: 'qiniu_manager#uptoken'
    end
  end

  # resources :passwords,
  #     controller: 'clearance/passwords',
  #     only: [:create, :new]

    resource :session,
      controller: 'sessions',
      only: [:create]

    resources :users,
      controller: 'clearance/users',
      only: Clearance.configuration.user_actions do
        resource :password,
          controller: 'clearance/passwords',
          only: [:create, :edit, :update]
      end

    get '/sign_in' => 'sessions#new', as: 'sign_in'
    delete '/sign_out' => 'clearance/sessions#destroy', as: 'sign_out'

    if Clearance.configuration.allow_sign_up?
      get '/sign_up' => 'users#new', as: 'sign_up'
    end
end