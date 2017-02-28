Rails.application.routes.draw do
  root 'blogs#index'
  get '/uptoken', to: 'qiniu_manager#uptoken'
  get '/admin', to: 'sessions#new', as: 'admin'
  resources :blogs
end