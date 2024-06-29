Rails.application.routes.draw do
  devise_for :users
  resources :order_products
  resources :reviews
  resources :orders
  resources :wishlists
  resources :carts
  resources :products
  resources :categories
  resources :users

  root 'home#index'
  get '/my-account.html', to: 'home#my-account', as: 'my_account'
  get '/cart_page.html', to: 'carts#index', as: 'cart_page'
  get '/checkout_page.html', to: 'home#checkout_page', as: 'checkout_page'
  get '/order-confirmation.html', to: 'home#order-confirmation', as: 'order-confirmation'
  get '/contact-us.html', to: 'home#contact-us', as: 'contact-us'
  get '/wishlist.html', to: 'wishlists#index', as: 'user_wishlist'
  get '/blog-details.html', to: 'home#blog-details', as: 'blog-details'
  get '/about-us.html', to: 'home#about-us', as: 'about-us'
  get '/products', to: 'products#index', as: 'user_products'
  get '/product-details.html', to: 'home#product-details', as: 'product-details'

end
