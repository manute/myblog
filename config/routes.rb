Myblog::Application.routes.draw do
 
  resources :users

  resources :posts
  
  get 'aboutme' => 'aboutme#index'
     controller :aboutme do 
  end
  
  get 'admin' => 'admin#index'
    controller :sessions do 
      get 'login' => :new 
      post 'login' => :create 
      delete 'logout' => :destroy
  end

  root :to => 'posts#index'

end
