Rails.application.routes.draw do
  root 'tops#index'
  
  resources :ooyas
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
