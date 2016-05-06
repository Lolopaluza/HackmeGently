Rails.application.routes.draw do
  get 'hello_world', to: 'hello_world#index'
  devise_for :users

  resources :posts
  resources :comments

  resources :users do
    resources :skills
  end

  resources :posts do
    member do
      post :like
      delete :unlike
    end
  end
end
