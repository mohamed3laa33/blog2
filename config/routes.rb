Rails.application.routes.draw do
  get 'about/index'
  resources :posts do
  	resources :comments
  end
  devise_for :users  
  #resources :users
  root to: "posts#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
