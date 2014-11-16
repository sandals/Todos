Rails.application.routes.draw do
	root 'todos#index', via: :get

	resource :session, only: [:new, :create]
	resources :todos, only: [:index, :new, :create] do
		resource :completion, only: [:create]
	end
end
