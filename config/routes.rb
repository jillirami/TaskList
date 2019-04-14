Rails.application.routes.draw do
  root to: 'tasks#index'

  resources :tasks

  get '/tasks/:id/toggle_complete', to: 'tasks#toggle_complete', as: 'toggle_complete'
  patch '/tasks/:id/toggle_complete', to: 'tasks#toggle_complete'

  get '/tasks/:id/verify', to: 'tasks#verify', as: 'verify'
end
