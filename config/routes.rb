Rails.application.routes.draw do
  root 'blogs#index'
  # get '*path', to: redirect('/')
  resources :blogs
end
