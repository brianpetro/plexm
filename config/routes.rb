Plexm::Application.routes.draw do
  resources :submissions


  resources :uploads


  resources :bounties


  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
end