Rails.application.routes.draw do
  root to: 'pages#home'
  
  resources :users, only: :create do
    collection do
      post 'confirm'
      post 'login'
    end
  end
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :challenges, only: [ :index, :show, :update, :create ]
    end
  end
end
