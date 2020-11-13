Rails.application.routes.draw do
root to: "cocktails#index"
  resources :cocktails, only: [:show, :new, :create] do
    resources :reviews, only: [:create]
    resources :doses, only: [:create]
  end


    resources :doses, only: [:destroy]
end
# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

# get 'cocktails/index'
# get 'cocktails/show'
# get 'cocktails/new'
# get 'cocktails/create'
