Rails.application.routes.draw do
  get 'sessions/new'
  #root 'application#hello'
  #get 'static_pages/home'
  root 'static_pages#home'
  get '/help',    to: 'static_pages#help'
  get '/about',   to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'

  get '/signup',  to: 'users#new'
  resources :users # ~ get 'users/:id', to: 'users#show'
  #get '/delete', to: 'users#destroy'

  get '/login', to: 'sessions#new'
  post '/login',  to: 'sessions#create'  
  delete '/logout',  to: 'sessions#destroy'  
end
