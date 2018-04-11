module Spree
	class InstagramPost < Spree::Base
		has_one :instagram_item
		validates :post_image_url, presence: true
		validates :post_link, presence: true
		def self.get_instagram_posts
			return InstagramApi.user.recent_media
		end
	end
end