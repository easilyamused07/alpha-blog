Rails.application.routes.draw do
  #root to: 'pages#home'
  #get 'pages/home', to:'pages#home'
  get 'about', to:'pages#about'
  root 'pages#home'
end
