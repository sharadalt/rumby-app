Rails.application.routes.draw do
  # get 'teachers/index'
  # get 'teachers/show'
  # get 'teachers/new'
  # get 'teachers/edit'
  # get 'teacher/index'
  # get 'teacher/show'
  # get 'teacher/new'
  # get 'teacher/edit'

  resources :teachers
  # get 'welcome/index'
  # get 'welcome/about'

  get 'about' => 'welcome#about'
  root 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
