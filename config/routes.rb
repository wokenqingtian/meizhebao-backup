Rails.application.routes.draw do

	namespace :admin do
		resources :products
	end

	resources :products do
		member do
			post :add_to_cart
		end
	end

  	devise_for :users

  	resources :carts do
  		collection do
  			delete :clean
  		end
  	end

  	resources :cart_items

	root 'welcome#index'


	resources :welcome do
		collection do
			get :fix
		end
	end

end
