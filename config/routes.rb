Rails.application.routes.draw do
  get 'session/new'

  get 'pages/home'
  root :to => 'pages#home'
  resources :scores
  resources :users
 
end
