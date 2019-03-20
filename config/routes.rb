Rails.application.routes.draw do
  resources :posts, except: [:destroy]
  resources :authors, except: [:destroy]
end
