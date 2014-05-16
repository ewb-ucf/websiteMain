Rails.application.routes.draw do

# Home Page
match '/', to:'static_pages#home', via:'get' 
  
# About Us Tab
match '/about', to:'static_pages#about', via:'get' 

# Our People --> Our Partners
match '/partners', to:'static_pages#partners', via:'get' 

# Our People 
match '/members', to:'members#show',  via:'get'
  resources :members

  # Exec Board
  match '/exec_board', to:'members#exec_board',  via:'get'

  # International Project Team
  match '/intl_project_team', to:'members#intl_project_team',  via:'get'

  # Local Project Team
  match '/local_project_team', to:'members#local_project_team',  via:'get'

  # Software Team
    match '/software_team', to:'members#software_team',  via:'get'

  # Alum
  match '/alum', to:'members#alum',  via:'get'

# Our Projects
match '/projects',  to:'projects#show',  via:'get'

    # Local Projects (bithlo, rainwater catchment)
    match '/projects/local',  to:'projects#local',  via:'get'

    # International Projects (weather station, dr)
    match '/projects/international',  to:'projects#international',  via:'get'

    # Software Projects
    match '/projects/software',  to:'projects#software',  via:'get'

    # Other Projects
    match '/projects/other',  to:'projects#other',  via:'get'

# Events
match '/events',  to:'events#show',  via:'get'

  # Workshops
  match '/workshops',  to:'events#workshops',  via:'get'

  # Lectures
  match '/lectures',  to:'events#lectures',  via:'get'

# Media (photos and videos)
match '/media',  to:'medias#show',  via:'get' 

  # Photos (categorized by event+date)
  match '/media/photos',  to:'medias#photos',  via:'get'

  # Videos (categorized by event+date)
  match '/media/videos',  to:'medias#videos',  via:'get'

# Contact 
# (have a drop down menu with options of who to send to general, localpm, software, etc)
match '/contact',  to:'contacts#new',  via:'get'
  resources "contacts", only: [:new, :create]

# Other URLS and links

  # Applications
  match '/applications/membership',  to:'members#new',  via:'get' 
  match '/applications/intl_project_team',  to:'members#new_international',  via:'get' 
  match '/applications/local_project_team',  to:'members#new_local',  via:'get' 
  match '/applications/software_team',  to:'members#new_software',  via:'get' 
  match '/applications/executive_board',  to:'members#new_exec_board',  via:'get' 

  # Forms
  match '/forms/project_proposal',  to:'projects#new',  via:'get'
  match '/forms/event_proposal',  to:'events#new',  via:'get'
  # match '/forms/order',  to:'X#new',  via:'get'


  # User Profiles (gets profile of currently logged in user)
  # get 'profile', to: 'users#show' 



#=======================================================================================#
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
