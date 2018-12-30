Rails.application.routes.draw do
  
  resources :categories
  get "/question/:id" => "quizzes#question"
  post "/check/:id" => "quizzes#check"
  get "users/index" => "home#index"
  get "/group" => "home#group"
  get "/home/user_edit/:id" => "home#user_edit"
  post "home/user_edit/:id" => "home#user_change"
  get "/user_image/:id" => "home#image_edit"
  post "/user_update/:id" => "home#image_update"
  get "users/users_icon/:id" => "home#users_icon", :as => :user_icon
  get "/request_form" => "home#request_form"
  resources :quizzes
  get "/drill/:id" => "quizzes#drill"
  post "/drill_check/:id" =>"quizzes#drill_check"
  post "/request_response" => "home#request_response"
  get "/request_list" => "home#request_list"
  root to: 'home#top'

  devise_for :users, :controllers => {
   :registrations => 'users/registrations'
  }
  
  
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
