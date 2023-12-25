Rails.application.routes.draw do
  resources :users, only: [:show, :edit, :update]
  resources :post_images, only: [:new, :create, :index, :show, :destroy]
  devise_for :users
get 'homes', to: 'homes#top'
get 'homes/about', to: 'homes#about', as: :about
 resources :post_images, only: [:new, :create, :index, :show, :destroy] do
    resources :post_comments, only: [:create]
     resources :post_comments, only: [:create, :destroy]
      resource :favorite, only: [:create, :destroy]
  end
root to: 'homes#about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
