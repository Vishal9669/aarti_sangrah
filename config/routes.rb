Rails.application.routes.draw do
  root 'aartis#index'
  resources :aartis
  resources :chalisas
  resources :vrat_kathayes
  resources :mantras
  resources :jyotirlings
end
