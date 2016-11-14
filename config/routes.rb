Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
  get 'contact_us' => 'home#contact_us'
  get 'menu' => 'home#menu'
  resources :food_items do
    post '/addToCart', to: 'order_details#addToCart'
    delete '/deleteItem', to: 'order_details#deleteItem'
    post '/addItem', to: 'order_details#addItem'
  end
  get 'cart' => 'order_details#index'
  resources :orders ,only: [:show, :create]

end
