Spree::Core::Engine.routes.draw do
  namespace :admin do
    resources :instagram_items do 
      member do
        post :new, to: 'instagram_items#new'
      end
    end
  	resources :instagram_posts
  	get  :get_instagram_posts, to: 'instagram_posts#get_instagram_posts'
  end
end