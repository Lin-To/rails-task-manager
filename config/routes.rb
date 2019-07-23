Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # CRUD
  # INDEX (READ ALL Tasks)
  get 'tasks', to: "tasks#index", as: :tasks
  # # CREATE
  get 'tasks/new', to: "tasks#new", as: :new
  post 'tasks', to: "tasks#create", as: :create
  # (read one tasks)
  get 'tasks/:id', to: "tasks#show", as: :task

  # UPDATE
  # #get the form with the restaurant details
  get 'tasks/:id/edit', to: "tasks#edit", as: :edit
  patch 'tasks/:id', to: "tasks#update", as: :update
  # #submit the form (patch or put)

  # #DESTROY RESTAURANT
  # # restaurants/56
  delete 'tasks/:id', to: "tasks#destroy", as: :destroy

  root to: "tasks#index"

end

# As a user, I can list tasks
# As a user, I can view the details of a task
# As a user, I can add a new task
# As a user, I can edit a task (mark as completed / update title & details)
# As a user, I can remove a task
