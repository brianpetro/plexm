Plexm::Application.routes.draw do



  resources :comments


  resources :discussions


  resources :prelaunches


  resources :uploads


  resources :bounties do
  	resources :submissions
	end

  authenticated :user do
    root :to => 'bounties#index'
  end
  root :to => "prelaunches#index"
  devise_for :users
  resources :users
end
