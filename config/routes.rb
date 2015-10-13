Rails.application.routes.draw do
  get 'legislators/index'

  get 'embeds/show'

  resources :welcome, only: [:index]
  resources :embeds, only: [:show]
  resources :legislators, only: [:index]
  resources :inbounds, only: [:create]
  root 'welcome#index'
end
