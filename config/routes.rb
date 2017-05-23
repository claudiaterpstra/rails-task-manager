Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # 1. Index
  #get "tasks", to: "tasks#index"
  # 2. New
  #get "tasks/new", to: "tasks#new"
  # 3. Show
  #get "tasks/:id", to: "tasks#show"
  # 4. Create
  #post 'tasks', to: "tasks#create"
  # 5. Edit
  #get "tasks/:id/edit", to: "tasks#edit"
  # 6. Update
  #patch "tasks/:id", to: "tasks#update", as: 'task'
  # 7. Delete
  #delete "tasks/:id", to: "tasks#destroy"

  resources :tasks
end
