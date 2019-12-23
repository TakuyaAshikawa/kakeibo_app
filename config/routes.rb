Rails.application.routes.draw do
  root "top#index"
  
  resources :revenues
  resources :expenses
end
