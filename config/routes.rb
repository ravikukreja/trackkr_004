Trackkr002::Application.routes.draw do
  resources :friends

  root :to => "trackkr_modules#index"
 
  resources :graphs

  resources :user_products

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