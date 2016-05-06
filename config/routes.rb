Rails.application.routes.draw do
  resources :posts
  devise_for :users
  resources :comments

  resources :users do
    :skills
  end
end
