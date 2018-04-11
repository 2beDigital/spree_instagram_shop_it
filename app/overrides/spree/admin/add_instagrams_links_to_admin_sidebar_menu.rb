Deface::Override.new( virtual_path: "spree/admin/shared/_configuration_menu",
					  name: "instagram_posts_admin_sidebar_menu",
					  insert_bottom: "[data-hook='admin_configurations_sidebar_menu']",
					  text: "<%= configurations_sidebar_menu_item Spree.t(:instagram_posts), spree.admin_instagram_posts_url %>")

Deface::Override.new( virtual_path: "spree/admin/shared/_configuration_menu",
					  name: "instagram_items_admin_sidebar_menu",
					  insert_bottom: "[data-hook='admin_configurations_sidebar_menu']",
					  text: "<%= configurations_sidebar_menu_item Spree.t(:instagram_items), spree.admin_instagram_items_url %>")