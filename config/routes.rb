Rails.application.routes.draw do
  get 'subparanoids/index'
  root "paranoiacs#index"
  resources :paranoiacs do
    resources :subparanoids
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
