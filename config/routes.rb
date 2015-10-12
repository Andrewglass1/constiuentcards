Rails.application.routes.draw do
  get 'legislators/index'

  get 'embeds/show'

  resources :welcome, only: [:index]
  resources :embeds, only: [:show]
  resources :legislators, only: [:index]
  root 'welcome#index'
end
