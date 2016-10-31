Rails.application.routes.draw do
  get 'orders_controller/index'

  get 'orders_controller/show'

  get 'orders_controller/edit'

  get 'orders_controller/create'

  get 'orders_controller/destroy'

  get 'orders_controller/new'

  get 'orders_controller/update'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
  get 'contact_us' => 'home#contact_us'
  get 'menu' => 'home#menu'
  resources :food_items
end
