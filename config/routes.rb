Rails.application.routes.draw do
  get 'welcome/index'

  resources :goals

  root 'welcome#index'
end
