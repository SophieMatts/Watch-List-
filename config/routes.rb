Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :lists do
    resources :bookmarks
  end
  delete "bookmarks/:id", to: "bookmarks#destroy"
  # Defines the root path route ("/")
  # root "articles#index"
end
