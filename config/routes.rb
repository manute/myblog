Myblog::Application.routes.draw do
 
  resources :users

  resources :posts
  
  get 'admin' => 'admin#index'
    controller :sessions do 
      get 'login' => :new 
      post 'login' => :create 
      delete 'logout' => :destroy
  end

  root :to => 'posts#index'

end
