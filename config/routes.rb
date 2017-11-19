Rails.application.routes.draw do

  resources :items
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }


  root 'static_pages#homepage'
end
