Rails.application.routes.draw do

  get 'histories/my_history', to: 'histories#my_history'

  resources :histories

  devise_for :users, controllers: {
   registrations: 'users/registrations'
  }

  # root "histories#index"
  root to:'histories#index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
