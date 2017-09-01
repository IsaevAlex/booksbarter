Rails.application.routes.draw do
  devise_for :users, :controllers => { omniauth_callbacks: 'omniauth_callbacks' }
  root to: 'home#index'
  
  authenticated :user do
      root 'users#show', as: :authenticated_root
      get 'home', to: 'home#index'    
  end 

  resources :users
end
