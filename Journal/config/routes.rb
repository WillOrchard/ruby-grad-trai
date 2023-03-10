Rails.application.routes.draw do
  root 'entries#index'
  get '/entries', to: 'entries#index'
  get '/entries/:id/edit', to: 'entries#edit', as: 'edit_entry'
  patch '/entries/:id', to: 'entries#update', as: 'update_entry'
  resources :entries, only: [:create, :new, :destroy]
end
