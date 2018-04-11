instagram_config = YAML.load_file("config/spree_instagram_shop_it.yml")[Rails.env]

SpreeInstagramShopIt::Configuration.config(
  :access_token: instagram_config[:access_token],
  :client_id: instagram_config[:client_id],
  :client_secret: instagram_config[:client_secret],
  :post_per_page: 16,
  :item_per_page: 8)

SpreeInstagramShopIt::Configuration.config_instagram_api