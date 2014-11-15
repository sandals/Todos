Rails.application.routes.draw do
	root 'todos#index', via: :get

	resources :todos, only: [:new, :create]
end
