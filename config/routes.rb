Rails.application.routes.draw do
  devise_for :bloggers
  root to: 'articles#index'
  resources :articles
  # get 'articles', to: 'articles#index', as: 'articles'
  # get 'articles/new', to: 'articles#new', as: 'new_article'
  # get 'articles/:id/edit', to: 'articles#edit', as: 'edit_article'
  # get 'articles/:id', to: 'articles#show', as: 'article'
  # post 'articles/create', to: 'articles#create'
  # delete 'articles/:id', to: 'articles#destroy'
  # put 'article/:id', to: 'articles#update'
  resources :users
end
