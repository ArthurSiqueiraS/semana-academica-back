Rails.application.routes.draw do
  post 'login' => 'user_token#create'
	get 'user' => 'sessions#user'

  # Collection routes
	resources :publications, only: [:index, :show]
	resources :lectures, only: [:index, :show, :create]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
