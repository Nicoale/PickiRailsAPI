Rails.application.routes.draw do
  
  namespace :api do
    namespace :v1 do
      get 'rider_logins/index'
      get 'rider_logins/show'
      get 'rider_logins/update'
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

