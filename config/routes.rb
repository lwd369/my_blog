Rails.application.routes.draw do
  root 'home#index'
  # get '*path', to: redirect('/')
  resources :blogs
end
