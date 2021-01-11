Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users

  resources :subs, except: [:destroy]

  resource :session, only: [:create, :new, :destroy]
end
