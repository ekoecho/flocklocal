ActionController::Routing::Routes.draw do |map|
  map.root  :controller => 'pages', :action => 'home'
  map.about '/about', :controller => 'pages', :action => 'about'
  map.first_flock '/first_flock', :controller => 'pages', :action => 'first_flock'
  map.success_stories'/success_stories', :controller => 'pages', :action => 'success_stories'
  map.faq'/faq', :controller => 'pages', :action => 'faq'

  map.logout '/logout', :controller => 'sessions', :action => 'destroy'
  map.login '/login', :controller => 'sessions', :action => 'new'
  map.register '/register', :controller => 'users', :action => 'create'
  map.signup '/signup', :controller => 'users', :action => 'new'
  map.resources :users

  map.resource :session

  # The priority is based upon order of creation: first created -> highest priority.

  # Sample of regular route:
  #   map.connect 'products/:id', :controller => 'catalog', :action => 'view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   map.purchase 'products/:id/purchase', :controller => 'catalog', :action => 'purchase'
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   map.resources :products

  # Sample resource route with options:
  #   map.resources :products, :member => { :short => :get, :toggle => :post }, :collection => { :sold => :get }

  # Sample resource route with sub-resources:
  #   map.resources :products, :has_many => [ :comments, :sales ], :has_one => :seller

  map.resources :events
  map.resources :user_event_attendances, :only => [:create, :update]

  # Sample resource route within a namespace:
  map.namespace :admin do |admin|
    # Directs /admin/products/* to Admin::ProductsController (app/controllers/admin/products_controller.rb)
    admin.resources :events
    admin.resources :users
    admin.resources :locations
    admin.resources :user_event_attendences
  end

  # You can have the root of your site routed with map.root -- just remember to delete public/index.html.
  # map.root :controller => "welcome"

  # See how all your routes lay out with "rake routes"

  # Install the default routes as the lowest priority.
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
