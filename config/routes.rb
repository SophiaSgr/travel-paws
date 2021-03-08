Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :shelters, only: [ :index, :show, :new, :create ] do
    resources :animals, only: [ :create, :new ]
  end

  resources :animals, only: [ :show ] do
    resources :requests, only: [ :new, :create ]
  end

  resources :dashboard, only: [ :index ]
  patch "requests/:id/accept", to: "requests#accept", as: :accept
  patch "requests/:id/decline", to: "requests#decline", as: :decline

  resources :chatrooms, only: :show do
    resources :messages, only: :create
  end
end
