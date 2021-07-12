Rails.application.routes.draw do
  devise_for :users
  root to: 'states#index'

  get 'states', to: 'states#index'
  get 'states/new', to: 'states#new',as: :new_state
  post 'states', to: 'states#create',as: :create_state 
  get 'states/:id/edit', to: 'states#edit',as: :edit_state
  patch 'states/:id', to: 'states#update',as: :update_state 
  delete 'states/:id', to: 'states#destroy',as: :delete_state
  get 'states/:id', to: 'states#show',as: :state 

  get 'districts', to: 'districts#index'
  get 'districts/new', to: 'districts#new',as: :new_district
  post 'districts', to: 'districts#create',as: :create_district 
  get 'districts/:id/edit', to: 'districts#edit',as: :edit_district
  patch 'districts/:id', to: 'districts#update',as: :update_district 
  delete 'districts/:id', to: 'districts#destroy',as: :delete_district
  get 'districts/:id', to: 'districts#show',as: :district 

  get 'talukas', to: 'talukas#index'
  get 'talukas/new', to: 'talukas#new',as: :new_taluka
  post 'talukas', to: 'talukas#create',as: :create_taluka 
  get 'talukas/:id/edit', to: 'talukas#edit',as: :edit_taluka
  patch 'talukas/:id', to: 'talukas#update',as: :update_taluka 
  delete 'talukas/:id', to: 'talukas#destroy',as: :delete_taluka
  get 'talukas/:id', to: 'talukas#show',as: :taluka 

  get 'animals', to: 'animals#index'
  get 'animals/new',to: 'animals#new',as: :new_animal
  post 'animals', to: 'animals#create', as: :create_animal
  delete 'animals/:id',to: 'animals#destroy',as: :destroy_animal
  get 'animals/:id/edit', to: 'animals#edit', as: :edit_animal
  patch 'animals/:id',to: 'animals#update',as: :update_animal
  get 'animals/:id',to: 'animals#show',as: :animal
 
end
