Rails.application.routes.draw do
  resources :schools
  resources :skool_years
  resources :teachers
  # get 'schools/index'
  # get 'schools/show'
  # get 'schools/new'
  # get 'schools/edit'
  # get 'skool_years/index'
  # get 'skool_years/show'
  # get 'skool_years/new'
  # get 'skool_years/edit'
  # get 'teachers/index'
  # get 'teachers/show'
  # get 'teachers/new'
  # get 'teachers/edit'
  # get 'teacher/index'
  # get 'teacher/show'
  # get 'teacher/new'
  # get 'teacher/edit'

  
  # get 'welcome/index'
  # get 'welcome/about'

  get 'about' => 'welcome#about'
  root 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
