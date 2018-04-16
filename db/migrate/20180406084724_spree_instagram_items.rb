class SpreeInstagramItems < ActiveRecord::Migration
  	def change
  	 	create_table :spree_instagram_items do |t|
			t.string  :image_url
			t.boolean :published,    default: false
			t.boolean :outstanding,  default: false
			t.belongs_to :instagram_post, index: true
			t.timestamps
    	end
 
    	create_table :spree_instagram_items_products, id: false do |t|
			t.belongs_to :product, index: true
			t.belongs_to :instagram_item, index: true
    	end
	end
end