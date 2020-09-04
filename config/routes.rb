Rails.application.routes.draw do
  root to: 'users#index'
  resources :user_meta
  resources :users

  resources :roles do
    collection do
      get :hide_roles
      post :edit_multiple
      post :update_roles
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
