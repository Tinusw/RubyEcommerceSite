Rails.application.routes.draw do
  resources :products
  get 'static_pages/about'

  get 'static_pages/contact'
  get 'static_pages/index'

  post 'static_pages/thanks'

  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#index'

  resources :orders, only: [:index, :show, :create, :destroy]
end
