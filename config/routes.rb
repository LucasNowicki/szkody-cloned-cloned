Rails.application.routes.draw do
  resources :posts
  root 'posts#index'
  
  get '/send_majchrzak', to: 'posts#send_majchrzak'
  get '/send_pcwo', to: 'posts#send_pcwo'
  get '/send_solace', to: 'posts#send_solace'
end
