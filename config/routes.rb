Rails.application.routes.draw do
  get '/tasks', to: 'tasks#index', as: 'tasks'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # method path-URL, to: Controller#action (order of routes matter, need #new before #show)

  get '/tasks/new', to: 'tasks#new', as: 'new_task'
  post '/tasks', to: 'tasks#create'
  
  get 'tasks/:id', to: 'tasks#show', as: 'task' #id does not have to be a number, it can be a word ORDER MATTERS OF ROUTES
  
  get '/tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'
  patch '/tasks/:id', to: 'tasks#update'

  get '/tasks/:id/complete', to: 'tasks#mark_complete', as: 'mark_complete'
  patch '/tasks/:id/complete', to: 'tasks#mark_complete'

  get '/tasks/:id/incomplete', to: 'tasks#unmark_complete', as: 'unmark_complete'
  patch '/tasks/:id/incomplete', to: 'tasks#unmark_complete'

  delete '/tasks/:id', to: 'tasks#destroy'

  root to: 'tasks#index' # makes homepage to site go to the index, also get '/', to: 'tasks#index'
end
