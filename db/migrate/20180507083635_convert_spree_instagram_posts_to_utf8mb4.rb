class ConvertSpreeInstagramPostsToUtf8mb4 < ActiveRecord::Migration
  def change
    # for each table that will store unicode execute:
    execute "ALTER TABLE spree_instagram_posts CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;"
    # for each string/text column with unicode content execute:
    execute "ALTER TABLE spree_instagram_posts CHANGE description description TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL;"
    execute "ALTER TABLE spree_instagram_posts CHANGE username username VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL;"
  end
end