Rails.application.routes.draw do
  resources :group_labs
  get 'welcome/index'
  root 'welcome#index'
  resources :exames
  resources :laboratorios
  resources :group_labs
end
