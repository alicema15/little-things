Rails.application.routes.draw do
  root 'application#index'

  namespace :v1 do
    get "home"
  end
  namespace :v2 do
    get "home"
    get "instadesktop"
    get "opposition"
  end
  namespace :v3 do
    get "home"
  end
  namespace :v4 do
    get "home"
    get "twitter"
    get "twilio"
  end
  namespace :v5 do
    get "home"
    get "a"
    get "b"
    get "c"
    get "d"
    get "e"
    get "f"
    get "g"
    get "h"
    get "swatches"
  end
  namespace :v6 do
    get "home"
    get "a"
    get "b"
    get "c"
    get "d"
    get "e"
    get "f"
  end
  namespace :v7 do
    get "home"
  end
  namespace :v8 do
    get "home"
  end

  get 'vignette' => 'application#vignette', :as => "vignette"
  
  get 'branches/:location_id' => 'branches#home', :as => "branches"
  get 'branches/:location_id/seeds' => 'branches#seeds', :as => "branches_seeds"
  
  get 'map' => 'maps#home', :as => "map"
  get 'home' => 'homepage#home', :as => "home"
  post 'map/nearby' => 'maps#check_nearby', :as => "check_nearby"
  post 'home/nearby' => 'homepage#check_nearby', :as => "check_nearby_on_home"

  get 'map/add_location' => 'locations#new_location', :as => "location_new"
  patch 'map/add_location' => 'locations#create_location', :as => "location_create"
  get 'map/locations' => 'locations#show', :as => "show_location"
  delete 'map/locations' => 'locations#destroy', :as => "destroy_location"
  post 'map/create_location_here' => 'locations#create_location_here', :as => "create_location_here"
  post 'map/edit_location' => 'locations#update', :as => "update_location"

  
  get 'map/add_plant' => 'plants#new', :as => "plant_new"
  post 'map/add_plant' => 'plants#create', :as => "plant_create"
  post '/home/add_seed' => 'plants#create_by_planting', :as => "plant_seed"
  delete 'locations/delete_seed' => 'plants#destroy', :as => "plant_destroy"
  
  post '/home/save_seed' => 'homepage#save_seed', :as => "save_seed"


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  
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
