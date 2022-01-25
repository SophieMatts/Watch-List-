# Rails.application.routes.draw do
#   # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
#   resources :lists do
#     resources :bookmarks
#   end
#   delete "bookmarks/:id", to: "bookmarks#destroy"
#   # Defines the root path route ("/")
#   # root "articles#index"
# end
Rails.application.routes.draw do
  root to: 'lists#index'
  resources :lists, except: [:edit, :update] do
    resources :bookmarks, only: [:new, :create]
    resources :reviews, only: :create
  end
  resources :bookmarks, only: :destroy
  resources :reviews, only: :destroy
end
