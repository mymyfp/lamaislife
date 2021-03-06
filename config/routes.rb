Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :recipes do
    member {patch :vote }
  end
  resources :rooms do
    member {patch :join }
  end
end
