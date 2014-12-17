Rails.application.routes.draw do
  
  devise_for :users
  
  resources :foodproducts

  root to: 'welcome#index'

end
