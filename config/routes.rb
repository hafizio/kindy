Rails.application.routes.draw do
  root 'pages#home'
  get 'result', to: 'pages#result', as: 'result'

  resources :centres, only: [:index]
end
