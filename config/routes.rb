Plexm::Application.routes.draw do




  resources :blogs


  resources :prelaunches

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
  resources :users do
	  resources :uploads
	end
end
