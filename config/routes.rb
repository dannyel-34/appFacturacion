Rails.application.routes.draw do
  resources :productos

  resources :facturas

  resources :posts

  resources :roles
  
  devise_for :users
  resources :users
  
  resources :detalles do 
    post :edit_multiple, :on => :collection
    put :update_multiple, :on => :collection
  end
  
  resources :categories
  
  resources :clientes do
    get :autocomplete_municipio_nombre, :on => :collection
    collection { post :import }
  end
  
  resources :modo_pagos
  resources :estado_civils
  resources :tipo_docs
  resources :municipios
  resources :municipios
  
  get 'static_pages/home'

  get 'static_pages/help'

  get 'static_pages/contact'

  get 'static_pages/about'
  
  get 'productos/:id/download' => 'productos#download', as: :download

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
  
  match '/home', to: 'static_pages#home', via: 'get'
  match '/help',to: 'static_pages#help', via: 'get'
  match '/about', to: 'static_pages#about', via: 'get'
  match '/contact', to: 'static_pages#contact', via: 'get'
  
  root :to => 'static_pages#home'

end