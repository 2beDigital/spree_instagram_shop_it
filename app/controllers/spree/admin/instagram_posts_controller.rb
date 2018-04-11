module Spree
	module Admin
		class InstagramPostsController < Spree::Admin::ResourceController
			respond_to :js, only: [:get_instagram_posts]
			ssl_allowed :get_instagram_posts
			def get_instagram_posts
				posts = InstagramPost.get_instagram_posts.to_mash.data
				posts.each do |post|
					Spree::InstagramPost.where(post_image_url: post.images.standard_resolution.url,
							  						   post_link: post.link).first_or_create!
				end
				@collection = Spree::InstagramPost.all.order(created_at: :desc).page(params[:page]).per(SpreeInstagramShopIt::Configuration.post_per_page)
			end
			def index
				@collection = Spree::InstagramPost.all.order(created_at: :desc).page(params[:page]).per(SpreeInstagramShopIt::Configuration.post_per_page)
			end
		end
	end
end