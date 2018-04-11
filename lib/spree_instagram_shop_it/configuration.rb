module SpreeInstagramShopIt
    class Configuration
        class RateError < StandardError; end
        attr_accessor :post_per_page, :item_per_page, :access_token, :client_id, :client_secret

        def self.config params
            requires!(params, :post_per_page,
                            :item_per_page,
                            :access_token,
                            :client_id,
                            :client_secret)
            @post_per_page = params[:post_per_page]
            @item_per_page = params[:item_per_page]
            @client_secret = params[:client_secret]
            @access_token  = params[:access_token]
            @client_id     = params[:client_id]
        end

        def self.post_per_page
            return @post_per_page
        end

        def self.item_per_page
            return @item_per_page
        end

        def self.config_instagram_api
            raise "SpreeInstagramShopIt not configured!" if @access_token.nil? || @client_id.nil? || @client_secret.nil?
            InstagramApi.config do |config|
              config.access_token = @access_token
              config.client_id = @client_id
              config.client_secret = @client_secret
            end
        end

        private

        def self.requires!(hash, *params)
          params.each { |param| raise RateError, "Missing Required Parameter #{param}" if hash[param].nil? }
        end
    end
end