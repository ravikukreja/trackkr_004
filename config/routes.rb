
Trackkr002::Application.routes.draw do
  
  
  default_url_options :host => "localhost:3000" 

  resources :share_dashboards

  get "share/index"

  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  resources :user_product_plan_graphs
  
  #get "password_resets/new"
  resources :password_resets

  resources :user_product_plan_datas do
   post 'edit_individual', :on => :collection
   put 'update_individual', :on => :collection
  end

  resources :product_plans

  resources :plan_values

  resources :friendships

  root :to => "trackkr_modules#index"
 
  resources :graphs

  resources :user_product_plans
  get 'user_product_plan_graphs/new/:user_product_plan_id' => 'user_product_plan_graphs#new', :as => :new_graph_plan
  get 'user_product_plans/product/:product_id' => 'user_product_plans#new', :as => "add_new_user_product_plan"
  get 'plan_values/product/:product_plan_id' => 'plan_values#index', :as => "plan_value_product_info"
# the above are named routes - so we can call them using :as and the url that will be matched

  resources :dashboards 
  
  
  match  "/sample_dashboard" => "info#sample_dashboard", :as => :sample_dashboard
  match  "/about" => "info#About", :as => :About
  match  "/partners" => "info#Partners", :as => :Partners
  match  "/contact" => "info#Contact", :as => :Contact
  match  "/carriers" => "info#Carriers", :as => :Carriers
  match  "/help" => "info#Help", :as => :Help
  
resources :t_categories do
  resources :products do
    put 'select', :on => :collection
  end
end

  resources :trackkr_modules do
    resources :t_categories
  end
 
  resources :user_sessions
  
  get "login" => "user_sessions#new", :as => "login"
  get "logout" => "user_sessions#destroy", :as => "logout"
  
  get "add_to_cart/:product_id" => "user_products#add_to_cart",:as=>"add_to_cart"
  get "add_to_cart/:product_id/friend/:friend_id" => "user_products#add_to_cart",:as=>"add_to_cart_with_frd"  
  
  get "user_search" => "friendships#search", :as => "user_search"
  get "send_invite" => "friendships#send_invite",:as =>"send_invite"
  resources :users

end