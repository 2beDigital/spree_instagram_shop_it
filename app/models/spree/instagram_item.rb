module Spree
	class InstagramItem < ActiveRecord::Base
		belongs_to :instagram_post
		has_and_belongs_to_many :products
		validates :image_url, presence: true
		validates :instagram_post_id, presence: true
	end
end