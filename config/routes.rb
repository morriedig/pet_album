Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :pets do
    resources :tracks , only: [:create, :destroy]
  end

  resources :albums do
    resources :comments , only: [:create, :destroy, :edit]
    resources :likes , only: [:create, :destroy]
  end

  root "pets#index"

end
