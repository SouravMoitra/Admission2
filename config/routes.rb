Rails.application.routes.draw do


  resources :subject_streams

  resources :registers

  # static pages
  get 'static_pages/home'
  get 'static_pages/help'
  get 'static_pages/contact'

  # static_pages url shortening
  match '/help',  to: 'static_pages#help', via: 'get'
  match '/contact',  to: 'static_pages#contact', via: 'get'
  # root
  root 'static_pages#home'
  # signup signin signout url shortening
  devise_scope :user do
    match '/signup',  to: 'devise/registrations#new', via: 'get'
    match '/signin',  to: 'devise/sessions#new',         via: 'get'
    match '/signout', to: 'devise/sessions#destroy',     via: 'delete'
  end
  # custom devise controller for creating new user with captcha
  #ToDo
  # http://www.quora.com/How-can-I-use-nested-routes-with-Devise
  devise_for :users, :controllers => {:registrations => "registrations"}, :path => 'accounts'
  # users has personal academics and applications hence nested routes
  resources :users do
    resources :personals
    resources :academics
    resources :applications
  end

  # user_dashboard controller
  get 'user_dashboard/controlpanel'
  # Controlpanel route
  get 'controlpanels/controlpanel'
  get 'controlpanels/resetranks'
  get 'controlpanels/generateranks'
  # verify routes
  get 'vusers/verify'
  # dashboard url shortening
  match '/home',  to: 'user_dashboard#home', via: 'get'
  match '/controlpanel',  to: 'controlpanels#controlpanel', via: 'get'
  match '/verify', to: 'vusers#verify', via: 'get'
  # routes for streams
  resources :streams
  # routes for categories
  resources :categories
  # routes for cutoffs
  resources :cutoffs


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
