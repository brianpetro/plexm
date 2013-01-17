Plexm::Application.routes.draw do




  resources :prelaunches
  resources :uploads
  resources :bounties do
		resources :discussions
	  resources :discussion_comments
  	resources :submissions do
		  resources :comments
		end
	end

  authenticated :user do
    root :to => 'bounties#index'
  end
  root :to => "prelaunches#index"
  devise_for :users
  resources :users
end
