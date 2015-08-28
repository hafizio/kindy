Rails.application.routes.draw do
  root 'pages#home'
  get 'search', to: 'pages#search', as: 'search'
  get 'brainy-bunch-vs-iium', to: 'pages#compare', as: 'compare'
  get 'request-for-brainy-bunch', to: 'pages#call', as: 'call'

  resources :listings, only: [:index]
end
