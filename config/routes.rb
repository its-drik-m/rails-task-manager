Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'tasks', to: 'task#index'
  # link to create task
  get 'tasks/new', to: 'task#new', as: :new_task
  # Show List of Task
  get 'tasks/:id', to: 'task#show', as: :task

  # link to edit task
  get 'tasks/:id/edit', to: 'task#edit', as: :edit_task
  patch 'tasks/:id', to: 'task#update'

end
