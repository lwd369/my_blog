Rails.application.routes.draw do
  root 'blogs#index'
  # get '*path', to: redirect('/')
  get '/uptoken', to: 'qiniu_manager#uptoken'
  resources :blogs
end
