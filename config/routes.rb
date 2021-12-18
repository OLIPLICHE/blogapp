Rails.application.routes.draw do
  root 'users#index'
  resources :users, only: [:index, :show] do
    resources :posts, only: [:index, :show, :new, :create] do
      resources :commnets, only: [:new, :create]
 # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    end
  end
end