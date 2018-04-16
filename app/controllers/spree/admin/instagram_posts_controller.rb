module Spree
	module Admin
		class InstagramPostsController < Spree::Admin::ResourceController
			respond_to :js, only: [:get_instagram_posts]
			ssl_allowed :get_instagram_posts
			def get_instagram_posts
				instagram_ids = Spree::InstagramPost.all.select(:instagram_id).map { |x| x.instagram_id }
				instagram_posts = InstagramPost.get_instagram_posts.to_mash.data
				instagram_posts.each do |post|
					if instagram_ids.include?(post.id)
						@object = InstagramPost.find_by(instagram_id: post.id)
						@object.update(image_url: post.images.standard_resolution.url,
													link: post.link,
													likes: post.likes[:count],
													description: post.caption.present? ? post.caption.text : '',
													username: post.user.username,
													instagram_id: post.id)
					else
						@object = InstagramPost.new
						@object.update(image_url: post.images.standard_resolution.url,
													link: post.link,
													likes: post.likes[:count],
													description: post.caption.present? ? post.caption.text : '',
													username: post.user.username,
													instagram_id: post.id)
						@object.save!
					end
				end
				@collection = InstagramPost.all.order(created_at: :desc).page(params[:page]).per(SpreeInstagramShopIt::Configuration.post_per_page)
			end
			def index
				@collection = InstagramPost.all.order(created_at: :desc).page(params[:page]).per(SpreeInstagramShopIt::Configuration.post_per_page)
			end
		end
	end
end