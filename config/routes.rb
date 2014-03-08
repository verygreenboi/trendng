Trendng::Application.routes.draw do
	namespace :dashboard do
		match "", to: 'dashboard#index', via: :get 
		resources :users
	end
	authenticated :user do
    root to: "dashboard/dashboard#index", as: :authenticated_root
  end
  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users, only: [:show, :create]
end