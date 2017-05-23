Rails.application.routes.draw do

  devise_for :users

	resources :galleries do
		resources :collections, only: [:index, :new, :create]
    member do
      patch :archive
      patch :un_archive
      get :archived
    end
	end

	resources :collections, only: [:show, :edit, :update, :destroy] do
		resources :items
		member do
      patch :thumbnail
      patch :archive
      get :archived
    end
	end

  resources :users, only: [:show, :edit, :update]

  root 'galleries#index'
  get "/fetch_new_form" => 'items#show_new_item_form', as: 'fetch_new_form'

end
