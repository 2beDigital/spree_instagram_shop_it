class SpreeInstagramPosts < ActiveRecord::Migration
  	def change
  	 	create_table :spree_instagram_posts do |t|
			t.string  :image_url
			t.string  :link
			t.text	  :description
			t.string  :username
			t.string  :instagram_id
			t.integer :likes
			t.timestamps
    	end
    end
end