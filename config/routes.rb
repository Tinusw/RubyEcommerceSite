Rails.application.routes.draw do

  resources :products do 
    resources :comments 
  end

  resources :users

  devise_for :users, :path => '', :path_names => {:sign_in => 'login', :sign_out => 'logout'}

  resources :orders, only: [:index, :show, :create, :destroy]
  post 'payments/create'
  
  
  get 'static_pages/about'

  get 'static_pages/contact'
  get 'static_pages/index'

  post 'static_pages/thanks'

  # Root page
  root 'static_pages#index'
end
