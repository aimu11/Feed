Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'businesses/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :customers, only: [:index, :show, :new, :create, :edit, :update]

  # post "orders/:id/create"    => "orders#create"
  # get "/orders", to: "orders#index"

  resources :orders, only: [:index, :show, :create]  do
    resources :payments, only: [:new, :create]
end


  get "edit_food", to: "foods#edit", as: :edit_food
  get "dashboard", to: "customers#dashboard", as: :dashboard
  get "business_dashboard", to: "businesses#dashboard", as: :business_dashboard
  #get "users/sign_out", to: "devise/sessions#destroy"


 resources :businesses, only: [:show, :new, :create, :edit, :update, :destroy]

  resources :foods, only: [:index, :show, :new, :create, :edit, :update, :destroy] do
      resources :orders, only: [ :create, :index]
      resources :cart_details, only: [:create]
  end

  resources :carts, only: [:show]

  get 'cart/:cart_id/pay', to: 'payments#cart_new', as: :new_cart_payment
  post 'cart/:cart_id/pay', to: 'payments#cart_create', as: :cart_payments
  get 'cart/:cart_id/thanks', to: 'payments#thanks', as: :thanks
end
