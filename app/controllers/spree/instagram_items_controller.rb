module Spree
	class InstagramItemsController < Spree::StoreController
		def index
			@collection = Spree::InstagramItem.all.order(created_at: :desc).page(params[:page]).per(SpreeInstagramShopIt::Configuration.item_per_page)
		end
	end
end