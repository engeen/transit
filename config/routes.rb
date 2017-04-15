Rails.application.routes.draw do
  resources :jobs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


resources :jobs do
	member do 
		get 'perform', to: 'editor#index', as: :perform
	end
	resources :replicas
	resources :actors
end

end
