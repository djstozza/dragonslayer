Rails.application.routes.draw do
  get 'pages/home'
  root :to => 'pages#home'
  resources :scores
  resources :users
 
end
