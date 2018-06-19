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

  get 'projects' => 'projects#index'
  get 'projects/edit/:id' => 'projects#edit'
  post 'projects/edit/:id' => 'projects#update'
  delete 'projects/:id' => 'projects#destroy'
  resource :projects

  devise_for :users, controllers: { registrations: 'users/registrations', sessions: 'users/sessions' }
  root to: "projects#index"
end
