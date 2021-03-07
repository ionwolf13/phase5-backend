Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, :rooms, :student_rooms, :instructors, :student_assignments
  resources :schools

  # get '/login', to: 'sesssions#new'
  # post '/login', to: 'sessions#create'
  # get '/logout', to: 'sessions#destroy'

    post '/login', to: 'auth#create' 
#   # get '/logout', to: 'sessions#destroy'
end
