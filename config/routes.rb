Rails.application.routes.draw do
  get 'sessions/new'
  root 'pages#home'
  get "/login", to: "sessions#new"
  post "login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  
  resources :companies
  resources :topics
  resources :youtubers
  
end
