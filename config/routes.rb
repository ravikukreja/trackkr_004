Trackkr002::Application.routes.draw do
  root :to => "trackkr_modules#index"
 
  resources :graphs

  resources :user_products

  resources :dashboards 

resources :t_categories do
  resources :products
end

  resources :trackkr_modules do
    resources :t_categories
  end
 
  resources :user_sessions
  
  get "login" => "user_sessions#new", :as => "login"
  get "logout" => "user_sessions#destroy", :as => "logout"

  resources :users

end