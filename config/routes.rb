Trackkr002::Application.routes.draw do
  resources :user_product_plan_graphs

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
  get 'plan_values/product/:product_id' => 'plan_values#index', :as => "plan_value_product_info"
# the above are named routes - so we can call them using :as and the url that will be matched

  resources :dashboards 
  
  
  match  "/sample_dashboard" => "info#sample_dashboard", :as => :sample_dashboard
  
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
  
  get "user_search" => "friends#search", :as => "user_search"
  get "send_invite" => "friends#send_invite",:as =>"send_invite"
  resources :users

end