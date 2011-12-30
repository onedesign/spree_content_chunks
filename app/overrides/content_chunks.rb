Deface::Override.new(:virtual_path => "admin/configurations/index",
                     :name => "content_chunks_configuration_line",
                     :insert_bottom => "[data-hook='admin_configurations_menu']",
                     :text => "<%= configurations_menu_item('Content Chunks', admin_content_chunks_path, 'Manage bits of content (like Hero Images and Calls to Action)') %>",
                     :disabled => false)
