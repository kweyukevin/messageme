Rails.application.routes.draw do
  devise_for :users
  #root 'messages#index'
  #root 'devise/sessions#new'
  #root :to => redirect("/users/sign_in")
  # get 'login', to: 'users#index'

  unauthenticated do
    #root "home#index"
    root :to => redirect("/users/sign_in")
  end

  authenticated :user do
    root 'messages#index', as: :authenticated_root
  end

  resources :messages
  post 'message', to: 'messages#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
