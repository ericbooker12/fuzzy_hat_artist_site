Rails.application.routes.draw do

	resources :galleries do
		resources :groups, only: [:index, :new, :create]
	end

	resources :groups, only: [:show, :edit, :update, :destroy]
	resources :items

	root 'galleries#index'
end
