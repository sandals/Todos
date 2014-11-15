Rails.application.routes.draw do
	root 'todos#index', via: :get
end
