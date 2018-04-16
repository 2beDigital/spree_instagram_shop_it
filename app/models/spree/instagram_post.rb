module Spree
	class InstagramPost < Spree::Base
		has_one :instagram_item
		validates :image_url, presence: true
		validates :link, presence: true
		def self.get_instagram_posts
			return InstagramApi.user.recent_media
		end
	end
end