Rails.application.routes.draw do

	resources :galleries do
		resources :groups
	end

	root 'galleries#index'
end