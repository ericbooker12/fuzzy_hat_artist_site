Rails.application.routes.draw do

	resources :galleries do
		resources :collections, only: [:index, :new, :create]
	end

	resources :collections, only: [:show, :edit, :update, :destroy] do
		resources :items
	end


	root 'galleries#index'
end
