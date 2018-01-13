Rails.application.routes.draw do

  resources :product_types
  resources :items
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }


  root 'items#index'

  get 'about', to: 'static_pages#about'
  get 'contact', to: 'static_pages#contact'
  get 'prints', to: 'static_pages#prints'
  get 'shirts', to: 'static_pages#shirts'
  get 'stickers', to: 'static_pages#stickers'
  
end
