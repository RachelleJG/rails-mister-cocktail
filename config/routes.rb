Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'cocktails#index'
  resources :cocktails, only: [:index, :new, :create, :show, :destroy]  do
    resources :doses, only: [:new, :create]
  end

  resources :doses, only: [:destroy]
end
  # Cocktail controller
  #get 'cocktails', to: 'cocktails#index'
  #post 'cocktails', to: 'cocktails#create'
  #get 'cocktails/new', to: 'cocktails#new'
  #get 'cocktails/:id', to: 'cocktails#show'

  # Doses controller
  #get 'doses/new', to: 'doses#new'
  #get 'doses', to: 'doses#create'
  #delete 'doses/:id', to: 'doses#destroy'
