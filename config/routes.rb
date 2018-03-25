Rails.application.routes.draw do
  devise_for :users
   resources :fashions
   resources :users
   resources :fashions_comments
   root 'fashions#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
