Rails.application.routes.draw do
  post 'login' => 'user_token#create'
	get 'user' => 'sessions#user'
  get 'event' => 'event#online'
  post 'event/set' => 'event#update'

  # Collection routes
  resources :users, only: [:index, :show, :create]
  put 'users/:id/check_presence' => 'users#check_presence'
	resources :publications, only: [:index, :show, :create, :update]
  delete 'publications' => 'publications#destroy'
  resources :lectures, only: [:index, :show, :create, :update]
  delete 'lectures' => 'lectures#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
