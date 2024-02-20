Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'trains/index' => 'trains#index'
  root'trains#index'
  get 'trains/search' => 'trains#search'

  get 'trains/new' => 'trains#new'
  post 'trains' => 'trains#create'
  get 'trains/:id' => 'trains#show',as: 'train'
  patch 'trains/:id' => 'trains#update'
  delete 'trains/:id' => 'trains#destroy'
  get 'trains/:id/edit' => 'trains#edit', as:'edit_train'
  get 'trains/:train_id/likes' => 'likes#create'
  get 'trains/:train_id/likes/:id' => 'likes#destroy'
  resources :trains do
    resources :likes, only: [:create, :destroy]
    resources :comments, only: [:create]
  end
end
