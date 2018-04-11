class SpreeInstagramPosts < ActiveRecord::Migration
  	def change
  	 	create_table :spree_instagram_posts do |t|
			t.string  :post_image_url
			t.string  :post_link
			t.timestamps
    	end
    end
end