Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :studios, only:[:index, :show, :new, :create] do
    resources :bookings, only:[:new, :create]
  end
  resources :bookings, only:[:destroy]
  get "/my_bookings", to: "bookings#booking_manager"
  get "/my_studios", to: "studios#studio_manager"
end

