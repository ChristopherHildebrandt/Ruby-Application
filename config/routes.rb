Rails.application.routes.draw do
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # define 'pages#index' route, so when we open our root page, Rails knows which controller and its action to call.
  root to: 'pages#index'
end