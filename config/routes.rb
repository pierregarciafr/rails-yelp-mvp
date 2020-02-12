Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants, only: [:index, :create, :new, :edit, :show] do
    resources :reviews, only: [:index, :new, :create ]
  end
  resources :reviews, only: [ :show, :edit, :update, :destroy ]
end

