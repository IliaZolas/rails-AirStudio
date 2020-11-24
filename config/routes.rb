Rails.application.routes.draw do
  get 'studios/index'
  get 'studios/new'
  get 'studios/create'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :studios, only:[:index, :show, :new, :create]
end
