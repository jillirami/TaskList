Rails.application.routes.draw do
  get '/tasks', to: 'tasks#index', as: 'tasks'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # method path-URL, to: Controller#action (order of routes matter, need #new before #show)

  get '/tasks/new', to: 'tasks#new', as: 'new_task'
  post '/tasks', to: 'tasks#create'
  
  get 'tasks/:id', to: 'tasks#show', as: 'task'
  
  # get '/tasks/:id/edit', to: 'tasks#edit', as: 'edit_book'
  # patch '/tasks/:id', to: 'tasks#update'

  # delete '/tasks/:id', to: 'tasks#destroy'

  # mark a task complete!!!!!  patch '/tasks/:id/read', to: 'tasks#mark_complete', as: 'mark_complete'

  root to: 'tasks#index' # makes homepage to site go to the index, also get '/', to: 'tasks#index'
end
