Rails.application.routes.draw do

  get 'books/new'

  get 'sessions/new'
  
  root 'statics_book_pages#home'
  get  '/help',    to: 'statics_book_pages#help'
  get  '/about',   to: 'statics_book_pages#about'
  get  '/contact', to: 'statics_book_pages#contact'
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get '/books/search',  to: 'books#search'

  resources :users
  resources :books
end
