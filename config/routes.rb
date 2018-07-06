Rails.application.routes.draw do

  resources :users, only: [:index, :show, :new, :create, :edit, :update]
  resources :events, only: [:index, :show, :new, :create, :edit, :update] do
    resources :spots, only: [:index, :show, :new, :create, :edit, :update]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
