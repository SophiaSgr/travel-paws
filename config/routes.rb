Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :shelters, only: [ :index, :show, :new, :create ] do
    resources :animals, only: [ :show, :create, :new ] do
    end
  end
end
