Rails.application.routes.draw do
  # Collection routes
	resources :lectures, only: [:index, :show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
