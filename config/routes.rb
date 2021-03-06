Namiloya::Application.routes.draw do
  scope "(:locale)", :locale => /en|ru/ do
    get "about/index"
    get "about" => "about#index"
    get "order/:permalink" => "order#show", as: :order
    get "order/new"
    get "order/create"
    get "schedule" => "schedule#show", as: :schedules
    get "trip/:permalink" => "trip#show", as: :trip
    root "welcome#index"
    get "trip/:permalink" => "trip#show"
    get "trip/:permalink/:date" => "trip#show", as: :schedule
    get "order/:permalink/:date" => "order#new", as: :new_order
    post "order/:permalink/:date" => "order#create",  as: :orders
  end


  get "schedule" => "schedule#show"

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
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
