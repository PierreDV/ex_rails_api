Rails.application.routes.draw do
  root 'home#index'
 
  resources :blog_posts

end
