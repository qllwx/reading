Rails.application.routes.draw do
  resources :items
  resources :blogs
  resources :cshes
  resources :students
  resources :classnames
  resources :sexes
  get 'home/index'

  resources :grades
  resources :books
  resources :reports
  resources :users
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
