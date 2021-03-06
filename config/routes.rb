Rails.application.routes.draw do
  get 'hobby_image/new'
  get 'hobby_image/create'
  devise_for :users
  root to: 'homes#top'
  get 'home/about' => 'homes#about'

  resources :users,only: [:index,:show,:edit,:update]
  resources :hobbys
   resources :hobby_image, only: [:new, :create, :index, :show, :destroy]
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
