Rails.application.routes.draw do
  get 'members/index'
  get 'members/show'
  get 'members/new'
  get 'members/edit'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
