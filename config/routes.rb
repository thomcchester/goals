Rails.application.routes.draw do
  get 'welcome/index'

  resources :goals
  resources :goal_success_updater, controller: "goal_success_updater"

  root 'welcome#index'
end
