Rails.application.routes.draw do
  get "/bookmarks", to: "bookmarks#index", as: "bookmarks"
  post "/bookmarks", to: "bookmarks#create"
  get "/bookmarks/new", to: "bookmarks#new", as: "new_bookmark"
  get "bookmarks/:id", to: "bookmarks#show", as: "bookmark"
  patch "bookmarks/:id", to: "bookmarks#update"
  delete "bookmarks/:id", to: "bookmarks#destroy"
  put "bookmarks/:id", to: "bookmarks#update"
  get "bookmarks/:id/edit", to: "bookmarks#edit", as: "edit_bookmark"
end
