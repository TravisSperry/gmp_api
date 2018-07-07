# frozen_string_literal: true

Rails.application.routes.draw do
  resources :ambassadors do
    member do
      get :crop
      put :mark_approved
    end
  end

  namespace :exploding_dots do
    resources :chapters
  end

  devise_for :users
  resources :users, except: :create

  post 'create_user' => 'users#create', as: :create_user

  authenticated :user do
    root 'pages#dashboard', as: :authenticated_root
    resources :website_option_types
  end

  resources :website_options

  root to: 'pages#home'

  scope module: :pages do
    get :dashboard
  end
end
