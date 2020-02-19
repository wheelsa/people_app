Rails.application.routes.draw do
  root 'static_pages#home'
  get '/about', to: 'static_pages#about'
  resources :people
  resources :teams
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
