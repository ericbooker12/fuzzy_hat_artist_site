Rails.application.routes.draw do

  # get 'users/show'

  devise_for :users

	resources :galleries do
		resources :collections, only: [:index, :new, :create]
    member do
      patch :archive
      get :archived
    end
	end

	resources :collections, only: [:show, :edit, :update, :destroy] do
		resources :items
		member do
      patch :archive
      get :archived
    end
	end

  resources :users, only: [:show, :edit, :update]

  root 'galleries#index'

end
