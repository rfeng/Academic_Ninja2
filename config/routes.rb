ActionController::Routing::Routes.draw do |map|

  map.resources :pages do |pages|
	pages.resources :documents
  end
	map.preview '/preview', :controller => 'pages', :action => 'show', :id => '3'
		preview_path = '/preview'
	map.exposure '/exposure', :controller => 'pages', :action => 'show', :id => '4'
		exposure_path = '/exposure'
	map.comprehension '/comprehension', :controller => 'pages', :action => 'show', :id => '5'
		comprehension_path = '/comprehension'
	map.skills '/skills', :controller => 'pages', :action => 'show', :id => '6'
		skills_path = '/skills'
	map.enrichment '/enrichment', :controller => 'pages', :action => 'show', :id => '7'
		enrichment_path = '/enrichment'
	map.analysis '/analysis', :controller => 'pages', :action => 'show', :id => '9'
		analysis_path = '/analysis'
	map.synthesis '/synthesis', :controller => 'pages', :action => 'show', :id => '8'
		synthesis_path = '/synthesis'
	map.self_assess '/self_assess', :controller => 'pages', :action => 'show', :id => '10'
		self_assess_path = '/self_assess'
	map.evaluation '/evaluation', :controller => 'pages', :action => 'show', :id => '11'
		evaluation_path = '/evaluation'
	

  map.resources :documents

  map.resources :static_pages
	map.root :controller => 'static_pages', :action => 'home'
		root_path = '/'
	map.about '/about', :controller => 'static_pages', :action => 'about'
		about_path = '/about'
	map.contact '/contact', :controller => 'static_pages', :action => 'contact'
		contact_path = '/contact'

#  map.root, :controller => 'pages', :action => 'show'
#	root_path = '/'

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
  
  # Sample resource route with more complex sub-resources
  #   map.resources :products do |products|
  #     products.resources :comments
  #     products.resources :sales, :collection => { :recent => :get }
  #   end

  # Sample resource route within a namespace:
  #   map.namespace :admin do |admin|
  #     # Directs /admin/products/* to Admin::ProductsController (app/controllers/admin/products_controller.rb)
  #     admin.resources :products
  #   end

  # You can have the root of your site routed with map.root -- just remember to delete public/index.html.
  # map.root :controller => "welcome"

  # See how all your routes lay out with "rake routes"

  # Install the default routes as the lowest priority.
  # Note: These default routes make all actions in every controller accessible via GET requests. You should
  # consider removing the them or commenting them out if you're using named routes and resources.
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
