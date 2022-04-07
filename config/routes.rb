Rails.application.routes.draw do
  
  get '/projects', to: 'projects#index'
  
  post '/todos', to: 'todos#create'
  
  patch '/projects/:project_id/todos/:todo_id', to: 'projects#update'

end
