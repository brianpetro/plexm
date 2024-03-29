Plexm::Application.routes.draw do

	resources :tags
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

	match 'auth/:provider/callback', to: 'sessions#create'
	match 'auth/failure', to: redirect('/')
	match 'signout', to: 'sessions#destroy', as: 'signout'
end
