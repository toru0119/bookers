Rails.application.routes.draw do
  root to: 'homes#top'
  get 'index' => 'books#index'
  get 'edit/:id/edit' => 'books#edit', as: 'edit_book'
  get 'books/:id' => 'books#show', as: 'book'
  post 'books' => 'books#create'
  delete 'books/:id' => 'books#destroy', as: 'destroy_books'
  patch 'books/:id' => 'books#update', as: 'update_book'
end
