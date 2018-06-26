Rails.application.routes.draw do
  # devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  devise_scope :user do
    delete 'logout', to: 'users/sessions#destroy'
    get 'login', to: 'users/sessions#new'
    get 'signup' => 'users/registrations#new'
    post 'signup' => 'users/registrations#create'
    post 'login' => 'users/sessions#create'
  end

  get '/projects' => 'projects#index'
  get '/projects/new' => 'projects#new'
  get '/projects/:id/show' => 'projects#show'
  get '/projects/edit/:id' => 'projects#edit'
  post '/projects/edit/:id' => 'projects#update'
  delete '/projects/:id' => 'projects#destroy'
  resource :projects

  # ProjectRequests
  get '/project_requests' => 'project_requests#index'
  get '/projects_requests/new' => 'projects_requests#new'
  get '/project_requests/:id/show' => 'project_requests#show'

  get '/project_requests/edit/:id' => 'project_requests#edit'
  post '/project_requests/edit/:id' => 'project_requests#update'
  delete '/project_requests/:id' => 'project_requests#destroy'
  resource :project_requests

  devise_for :users, controllers: { registrations: 'users/registrations', sessions: 'users/sessions' }
  root to: "projects#index"
end
