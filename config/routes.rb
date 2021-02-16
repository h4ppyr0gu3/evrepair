Rails.application.routes.draw do

  devise_for :users
	root to: 'static_pages#home'
	get 'about', to: 'static_pages#about'
	get 'contact_us', to: 'static_pages#contact_us'
	resources :bookings
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
