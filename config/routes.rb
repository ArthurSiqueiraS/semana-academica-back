Rails.application.routes.draw do
  get 'auth/cas'
  get 'auth/:provider/callback' => 'sessions#create'
  get 'user' => 'sessions#user'
  post 'logout' => 'sessions#logout'

  # Collection routes
	resources :lectures, only: [:index, :show]
	resources :healthcare_providers, only: [:index, :show]
	resources :communities, only: [:index, :show]
	resources :cities, only: [:index, :show]
	resources :states, only: [:index, :show]
	resources :countries, only: [:index, :show]
	resources :diseases, only: [:index, :show]
	resources :symptoms, only: [:index, :show]
	resources :statuses, only: [:index, :show]
	resources :patients, only: [:index, :show, :create, :update]
	resources :medical_referrals, only: [:index, :show]
	resources :medical_units, only: [:index, :show]
	resources :anamneses, only: [:index, :show, :create, :update]

	put 'patients/:id/update_status' => 'patients#update_status'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
