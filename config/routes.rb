Rails.application.routes.draw do
  root 'pages#home'
  get 'search/q-brainy-bunch', to: 'pages#search', as: 'search'
  get 'brainy-bunch-vs-iium', to: 'pages#compare', as: 'compare'
  get 'request-for-brainy-bunch', to: 'pages#call', as: 'call'
  get 'brainy-bunch', to: 'listings#index', as: 'listings'
end
