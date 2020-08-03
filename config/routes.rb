Rails.application.routes.draw do
  get '/team', to: 'static_pages#team'
  get '/contact', to: 'static_pages#contact'
  root 'landing_page#index'
  get '/welcome/:name_id', to: 'landing_page#welcome'
#  get '/:idName', to: 'landing_page#hiddenpage'
end
