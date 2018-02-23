Rails.application.routes.draw do
  resources :cocktails, only: [:new, :create, :index, :show] do
    resources :doses, only: [:new, :create, :index, :show]
  end
  resources :doses, only: [:destroy]
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

