Rails.application.routes.draw do
  
  namespace :api do
    namespace :v1 do
      # resources :rider_logins
      # get'rider_logins#index'
      get 'rider_logins/create'
      put 'rider_logins/update'
      delete 'rider_logins/delete'
      
      root 'rider_logins#create'
    end
  end
  namespace :api do
    namespace :v1 do
      resources :logins
    end
  end
  namespace :api do
    namespace :v1 do
      resources :ridersignup     
    end
  end
end

