Trackkr002::Application.routes.draw do
  resources :user_product_actual_datas do
   post 'edit_individual', :on => :collection
   put 'update_individual', :on => :collection
  end

  resources :product_plans

  resources :plan_values

  resources :friends

  root :to => "trackkr_modules#index"
 
  resources :graphs

  resources :user_products

  get 'user_products/product/:product_id' => 'user_products#new', :as => "add_new_user_product"
  get 'plan_values/product/:product_id' => 'plan_values#index', :as => "plan_value_product_info"
  
  resources :dashboards 

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