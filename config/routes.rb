Rails.application.routes.draw do
  get 'businesses/index'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :customers, only: [:index, :show, :new, :create, :edit, :update]

  get "/orders", to: "orders#index"
  get "dashboard", to: "customers#dashboard", as: :dashboard
  get "business_dashboard", to: "businesses#dashboard", as: :business_dashboard
  #get "users/sign_out", to: "devise/sessions#destroy"


 resources :businesses, only: [:show, :new, :create, :edit, :update, :destroy]

  resources :foods, only: [:index, :show, :new, :create, :edit, :update, :destroy] do
      resources :orders, only: [ :create, :index]
  end

end
