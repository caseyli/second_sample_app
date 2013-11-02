SecondSampleApp::Application.routes.draw do
  resources :users
  resources :settings
  match '/signup',  to: 'users#new',            via: 'get'

  get "static_pages/home"
  get "static_pages/help"
	get "static_pages/about"
  get "static_pages/contact"
	
	get "/home", to: "static_pages#home"
  match "/contact", to: "static_pages#contact", via: [:post, :get]
	
	root "static_pages#home"
	
	
	# Resume Entries Resource
	match "/resume_entries", to: "resume_entries#index", via: "get", as: :resume_entries
	match "/resume_entries/new", to: "resume_entries#new", via: "get", as: :new_resume_entry
	match "/resume_entries", to: "resume_entries#create", via: "post"
	match "/resume_entries/:id", to: "resume_entries#show", via: "get", as: :resume_entry
	match "/resume_entries/:id/edit", to: "resume_entries#edit", via: "get", as: :edit_resume_entry
	match "/resume_entries/:id", to: "resume_entries#update", via: "patch"
	match "/resume_entries/:id", to: "resume_entries#destroy", via: "delete"
	
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end
  
  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
