Rails.application.routes.draw do
  get "ui(/*all)", to: "hackmegently#index"
  devise_for :users

  resources :posts do
    resources :comments
  end

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
