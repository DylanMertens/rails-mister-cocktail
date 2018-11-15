Rails.application.routes.draw do
  routes << "get '/cocktails', to: 'cocktails#index'"
  routes << "get '/cocktails/:id', to: 'cocktails#show'"
  routes << "get '/cocktails/new', to: 'cocktails#new'"
  routes << "post '/cocktails', to: 'cocktails#create'"
  routes << "get '/cocktails/:id/edit', to: 'cocktails#edit'"
  routes << "patch '/cocktails/:id', to: 'cocktails#update'"
  routes << "delete '/cocktails/:id', to: 'cocktails#destroy'"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
