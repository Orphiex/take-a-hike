Rails.application.routes.draw do
  mount_devise_token_auth_for 'Hiker', at: 'auth'

  root 'static_pages#index'

  get 'main', to: 'static_pages#index'

  get '/signin', to: 'static_pages#signin'
  get '/signup', to: 'static_pages#signup'

  get '/regions', to: 'trails#regions'

  get '/trails_by_region', to: 'trails#group_by_regions'

  # get '/trails', to: 'trails#index'
  resources :trails, only: [:index]
  get '/trails/:id', to: 'trails#details'

  resources :hikers, only: [:index, :show, :edit, :update]

  resources :hikes, only: [:new, :create, :show, :update]

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
