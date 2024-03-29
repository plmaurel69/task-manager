Rails.application.routes.draw do
  get "/tasks", to: "tasks#index"
  get "/tasks/new", to: "tasks#new"

  get "/tasks/:id", to: "tasks#show", as: :task

  get "/tasks/:id/edit", to: "tasks#edit", as: :edit
  patch "/tasks/:id", to: "tasks#update"

  post "/tasks", to: "tasks#create"

  delete "/tasks/:id", to: "tasks#destroy", as: :delete

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
