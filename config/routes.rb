Rails.application.routes.draw do

	resources :galleries do
		resources :groups
	end

	resources :items

	root 'galleries#index'
end