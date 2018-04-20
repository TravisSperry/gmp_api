Rails.application.routes.draw do
  resources :ambassadors
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  authenticated :user do
    root 'pages#dashboard', as: :authenticated_root
  end

  root to: "pages#home"

  scope module: :pages do
    get :dashboard
  end
end
