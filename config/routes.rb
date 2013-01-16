Plexm::Application.routes.draw do



  resources :prelaunches


  resources :uploads


  resources :bounties do
  	resources :submissions
	end

  authenticated :user do
    root :to => 'bounties#index'
  end
  root :to => "home#invite"
  devise_for :users
  resources :users
end
