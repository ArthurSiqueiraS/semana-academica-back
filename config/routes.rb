Rails.application.routes.draw do
  post 'login' => 'user_token#create'
	get 'user' => 'sessions#user'

  # Collection routes
	resources :users, only: [:index, :show, :create, :update]
	resources :publications, only: [:index, :show]
  resources :lectures, only: [:index, :show, :create, :update]
  delete 'lectures' => 'lectures#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
