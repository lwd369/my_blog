Rails.application.routes.draw do
  root 'static_pages#not_available'
  get '/index', to: 'static_pages#index_sample'
  # get '*path', to: redirect('/')
end
