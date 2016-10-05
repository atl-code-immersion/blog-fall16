Rails.application.routes.draw do
  devise_for :users
  resources :blog_posts

  root 'blog_posts#index'

  post 'create_comment' => 'blog_posts#create_comment'

  get 'delete_comment' => 'blog_posts#delete_comment'

  post 'edit_comment' => 'blog_posts#edit_comment'


  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
