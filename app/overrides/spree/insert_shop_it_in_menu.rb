Deface::Override.new( virtual_path: "spree/shared/_main_nav_bar",
					  name: "instagram_shop_it_in_menu",
					  insert_bottom: "#main-nav-bar ul:first-child",
					  text: "<li><%= link_to Spree.t(:instagram_shop_it), spree.instagram_items_path %></li>")