Rails.application.routes.draw do

  resources :coincidents
  resources :coincident_twos
  resources :coincident_trois
  resources :fourth_years

  devise_for :admins

  get '/admin' => 'admins#admin_home'
  get '/2017-season' => 'home#season2017'
  get '/2018-season' => 'home#season2018'
  get '/2019-season' => 'home#season2019'

  get '/home/2017-season' => 'home#season2017'
  get '/home/2018-season' => 'home#season2018'
  get '/home/2019-season' => 'home#season2019'

  # get '/application' => 'fourth_years#new', as: 'application'
  get '/application' => 'home#index'
  get '/home' => 'home#index'
  get '/joachim' => 'home#joachim'
  get '/faq-2020' => 'home#faq2020'
  
  root to: "home#index"

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
