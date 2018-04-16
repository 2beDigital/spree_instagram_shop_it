module Spree
	module Admin
		class InstagramItemsController < Spree::Admin::ResourceController
			def new
				@instagram_item = InstagramItem.new(instagram_item_params)
			end

			def index
				@collection = Spree::InstagramItem.all.order(created_at: :desc).page(params[:page]).per(SpreeInstagramShopIt::Configuration.item_per_page)
			end

			def create
				if params[:instagram_item][:product_ids].present?
		          params[:instagram_item][:product_ids] = params[:instagram_item][:product_ids].split(',')
		        end
				invoke_callbacks(:create, :before)
				@object.attributes = permitted_resource_params
				if @object.save
					invoke_callbacks(:create, :after)
					flash[:success] = flash_message_for(@object, :successfully_created)
					respond_with(@object) do |format|
					  format.html { redirect_to location_after_save }
					  format.js   { render :layout => false }
					end
				else
				invoke_callbacks(:create, :fails)
				respond_with(@object) do |format|
				  format.html do
				    flash.now[:error] = @object.errors.full_messages.join(", ")
				    render action: 'new'
				  end
				  format.js { render layout: false }
				end
				end
			end

			def update
		        if params[:instagram_item][:product_ids].present?
		          params[:instagram_item][:product_ids] = params[:instagram_item][:product_ids].split(',')
		        end
		        invoke_callbacks(:update, :before)
		        if @object.update_attributes(permitted_resource_params)
		          invoke_callbacks(:update, :after)
		          flash[:success] = flash_message_for(@object, :successfully_updated)
		          respond_with(@object) do |format|
		            format.html { redirect_to location_after_save }
		            format.js   { render layout: false }
		          end
		        else
		          invoke_callbacks(:update, :fails)
		          respond_with(@object)
		        end
			end

			private

			def instagram_item_params
				params.permit(:image_url, :instagram_post_id)
			end
		end
	end
end