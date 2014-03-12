require 'sidekiq/web'
Trendng::Application.routes.draw do
	namespace :dashboard do
		match "", to: 'dashboard#index', via: :get 
		match "/users/bulk_invite/:quantity", to: 'users#bulk_invite', via: :get, :as => :bulk_invite
		resources :users do
			get 'invite', :on => :member
		end
	end
	authenticated :user do
    root to: "dashboard/dashboard#index", as: :authenticated_root
    # mount Sidekiq::Web => '/sidekiq'
  end
  devise_scope :user do
  	root :to => "home#index"
  	match 'user/confirmation' => 'confirmations#update', via: :put, :as => :update_user_confirmation
	end
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users, only: [:show, :create]
end