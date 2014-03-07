Trendng::Application.routes.draw do
	namespace :dashboard do
		match "", to: 'dashboard#index', via: :get 
		resources :users
	end
  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users, only: [:show]
end