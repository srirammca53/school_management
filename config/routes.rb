Rails.application.routes.draw do
  resources :fees
  resources :courses
  resources :batches do
    member do
      get :enroll
    end
  end
  resources :roles
  resources :institutes
  resources :users do
    member do
      get :user_batches
      get :batch_users
    end
  end

  root 'welcome#index'
  get 'sign_up', to: 'registrations#new'
  post 'sign_up', to: 'registrations#create'
  get 'sign_in', to: 'sessions#new'
  post 'sign_in', to: 'sessions#create', as: 'log_in'
  delete 'logout', to: 'sessions#destroy'
  get 'password', to: 'passwords#edit', as: 'edit_password'
  patch 'password', to: 'passwords#update'
  get 'password/reset', to: 'password_resets#new'
  post 'password/reset', to: 'password_resets#create'
  get 'password/reset/edit', to: 'password_resets#edit'
  patch 'password/reset/edit', to: 'password_resets#update'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
