Rails.application.routes.draw do
  resources :post_images, only: [:new, :create, :index, :show]
  devise_for :users
get 'homes', to: 'homes#top'
get 'homes/about', to: 'homes#about', as: :about
root to: 'homes#about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
