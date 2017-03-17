Rails.application.routes.draw do

  get 'users/show'

  devise_for :users
	resources :galleries do
		resources :collections, only: [:index, :new, :create]
	end

	resources :collections, only: [:show, :edit, :update, :destroy] do
		resources :items
	end

  resources :users, only: [:show, :edit, :update]

  root 'galleries#index'

	#  if user_signed_in?
	#  	root 'users#show'
	#  else
	# 	root 'galleries#index'
	# end

end
p current_user