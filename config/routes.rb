Plexm::Application.routes.draw do



  resources :uploads


  resources :bounties do
  	resources :submissions
	end

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
end
