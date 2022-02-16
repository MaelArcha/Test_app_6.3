Rails.application.routes.draw do
  root 'page#home'
  get 'about', to: 'page#about'
  resources :articles 
  get 'signup', to: 'users#new'
  resources :users , except: [:new]
  get 'login', to: 'session#new'
  post 'login', to: 'session#create'
  delete 'logout', to: 'session#destroy'
end

