Rails.application.routes.draw do

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
resources :articles
get "bienven", to: "home#index"

get "articles/new", to: "articles#new"
post "articles", to: "articles#create"

get 'articles/:id', to: 'articles#show'
get 'articles/:id/edit', to: 'articles#edit'

delete 'articles/:id', to: 'articles#destroy'

root to: 'articles#index'



end
