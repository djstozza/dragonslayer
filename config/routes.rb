Rails.application.routes.draw do
  get 'session/new'
  root :to => 'session#new'
  get 'pages/home'
  
  resources :scores
  resources :users


  get '/session' => 'session#show'
  get '/login' => 'session#new'
  get '/session' => 'session#show'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'


 
 
end
