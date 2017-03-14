Rails.application.routes.draw do
  resources :groups
  resources :galleries

	root 'galleries#index'
end