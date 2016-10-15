Rails.application.routes.draw do
  resources :posts
  root 'posts#index'
  
  get '/send_email', to: 'posts#send_email'
end
