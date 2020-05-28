Rails.application.routes.draw do
  post 'login' => 'participant_token#create'

  # Collection routes
	resources :publications, only: [:index, :show]
	resources :lectures, only: [:index, :show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
