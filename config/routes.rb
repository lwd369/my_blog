Rails.application.routes.draw do
  root 'static_pages#not_available'
  get '*path', to: redirect('/')
end
