Rails.application.routes.draw do
  devise_for :users

  resources :users do
    :skills
  end
end
