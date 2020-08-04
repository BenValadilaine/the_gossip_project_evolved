Rails.application.routes.draw do
  get '/team', to: 'static_pages#team'
  get '/contact', to: 'static_pages#contact'
  root 'landing_page#index'
  get '/welcome/:name_id', to: 'landing_page#welcome'
  #get '/gossip/:gossip', to: 'dynamic_pages#gossip', as: 'gossip'
  get '/profile/:profile', to: 'dynamic_pages#profile', as: 'profile'
  resources :gossips
end
