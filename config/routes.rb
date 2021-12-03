Rails.application.routes.draw do
  root 'exames#index'
  resources :exames
  resources :laboratorios
end
