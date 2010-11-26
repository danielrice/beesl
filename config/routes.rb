Beesl::Application.routes.draw do
  resources :pages

  resources :sections

  # The priority is based upon order of creation:
  # first created -> highest priority.

	resources :sections, :only => [ :index, :show ]
	resources :panels, :only => [ :show ]
	resources :pages, :only => [ :show ]
	
	resources :users, :except => :show
	resource :user_session, :only => [ :create, :destroy ]
	
	namespace "admin" do
		resources :sections do
			collection do
				post 'sort'
			end
		end
		resources :panels, :except => [ :show ]
		resources :pages
	end
	
	match '/signup' => 'users#new'
  match '/logout' => 'user_sessions#destroy'
	match '/backside' => 'static#general_controls'
	
	root :to => "sections#index"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  match ':controller(/:action(/:id(.:format)))'
end
