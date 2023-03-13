Rails.application.routes.draw do
  get 'static/index'
  root 'entries#index'
  get '/entries', to: 'entries#index'
  get '/entries/:id/edit', to: 'entries#edit', as: 'edit_entry'
  patch '/entries/:id', to: 'entries#update', as: 'update_entry'
  get '/coding_resources', to: 'entries#coding_resources'
  get '/solirius_resources', to: 'entries#solirius_resources'
  get '/useful_websites', to: 'entries#useful_websites'
  get '/other', to: 'entries#other'
  get '/entries/category/:category', to: 'entries#show_category', as: 'category_entries'
  resources :entries, only: [:create, :new, :destroy]
end
