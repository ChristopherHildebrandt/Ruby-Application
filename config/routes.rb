Rails.application.routes.draw do
  devise_for :users, :controllers => {:registrations => "registrations"}
  
  # get 'views/pages/login'
  # get 'views/pages/signup'
  # get 'views/pages/index'
  root to: 'pages#login'


  authenticated :user do
    root to: 'pages#login', as: :authenticated_root
  end
  root to: redirect('/users/login')




  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
  end

  devise_scope :user do
    get 'signup', to: 'devise/registrations#new'
  end
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # define 'pages#index' route, so when we open our root page, Rails knows which controller and its action to call.
  
end



