module SpreeInstagramShopIt
  module Generators
    class InstallGenerator < Rails::Generators::Base
      class_option :auto_run_migrations, :type => :boolean, :default => false
      source_root File.expand_path('../../templates', __FILE__)
      def add_javascripts
        append_file 'vendor/assets/javascripts/spree/backend/all.js', "//= require spree/backend/spree_instagram_shop_it\n"
      end

      def add_stylesheets
        append_file 'vendor/assets/stylesheets/spree/backend/all.css', "*= require spree/backend/spree_instagram_shop_it\n"
        append_file 'vendor/assets/stylesheets/spree/frontend/all.css', "*= require spree/frontend/spree_instagram_shop_it\n"
      end
      
      def add_migrations
        run 'bundle exec rake railties:install:migrations FROM=spree_instagram_shop_it'
      end

      def copy_initializer_file
        copy_file 'config/initializers/spree_instagram_shop_it.rb', "config/initializers/spree_instagram_shop_it.rb"
      end

      def copy_conection_params_file
        copy_file 'config/spree_instagram_shop_it.yml', "config/spree_instagram_shop_it.yml"
      end

      def run_migrations
        run_migrations = options[:auto_run_migrations] || ['', 'y', 'Y'].include?(ask 'Would you like to run the migrations now? [Y/n]')
        if run_migrations
          run 'bundle exec rake db:migrate'
        else
          puts 'Skipping rake db:migrate, don\'t forget to run it!'
        end
      end
    end
  end
end