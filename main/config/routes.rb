Rails.application.routes.draw do

# Home Page
match '/', to:'static_pages#home', via:'get' 
  
# About Us Tab
resources :about

# Our People 
match '/members', to:'members#show',  via:'get'
  resources :members do
    resources :exec_board
    resources :intl_project_team
    resources :local_project_team
    resources :software_team
    resources :alumni    
  end
# match '/members/exec_board', to:'users#show',  via:'get'
# match '/members/intl_project_team', to:'users#show',  via:'get'
# match '/members/local_project_team', to:'users#show',  via:'get'
# match '/members/software_team', to:'users#show',  via:'get'
# match '/members/alumni', to:'users#show',  via:'get'

# namespace :users do
  # resources :docs

# Our Projects
# match '/projects',  to:'X#X',  via:'get'

    # Local Projects (bithlo, rainwater catchment)
    # match '/projects/local',  to:'X#X',  via:'get'

    # International Projects (weather station, dr)
    # match '/projects/international',  to:'X#X',  via:'get'

    # Software Projects
    # match '/projects/software',  to:'X#X',  via:'get'

    # Other Projects
    # match '/projects',  to:'X#X',  via:'get'

# Events
match '/events',  to:'events#show',  via:'get'

  # Workshops
  # match '/workshops',  to:'X#X',  via:'get'

  # Lectures
  # match '/lectures',  to:'X#X',  via:'get'

# Media (photos and videos)
# match '/media',  to:'X#X',  via:'get' 

  # Photos (categorized by event+date)
  # match '/media/photos',  to:'X#X',  via:'get'
    # resources :photos 

  # Videos (categorized by event+date)
  # match '/media/videos',  to:'X#X',  via:'get'
    # resources :videos

# Contact 
# (have a drop down menu with options of who to send to general, localpm, software, etc)
match '/contact',  to:'contacts#new',  via:'get'
  resources "contacts", only: [:new, :create]

# Other URLS and links

  # Applications
  match '/apply/membership',  to:'members#new',  via:'get' 
    resources :members
  # match 'apply/international-project-team',  to:'X#X',  via:'get' 
  # match 'apply/local-project-team',  to:'X#X',  via:'get' 
  # match 'apply/executive-board',  to:'X#X',  via:'get' 

  # User Profiles (gets profile of currently logged in user)
  # get 'profile', to: 'users#show' 

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'static_pages/home'

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
