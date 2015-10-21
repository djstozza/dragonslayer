Rails.application.routes.draw do
  get 'pages/home'

  resources :scores
  resources :users
 
end
