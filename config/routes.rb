Rails.application.routes.draw do
  get '/', to:'static_pages#root'
  
  get '/user', to: 'users#new'
  post '/user', to: 'users#new_post'
  
  get '/user/:username', to: 'users#show'
  get '/error', to: 'users#error'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
