Rails.application.routes.draw do
  root 'entries#index'
  get '/entries', to: 'entries#index'
  resources :entries, only: [:create, :new, :destroy]
end
