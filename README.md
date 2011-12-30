SpreeContentChunks
==================

A Spree extension for managing tiny bits of content.
By default, the content bits have a title, body, and optional image.


Installation
============

Include the following in your Gemfile (after the line that includes Spree):

    gem spree_content_chunks, :git => http://github.com/onedesign/spree_content_chunks.git

Then run:

    bundle install
    rake railties:install:migrations FROM=spree_content_chunks
    rake db:migrate


Usage
=====

A section will be added to Spree's configuration page, and can be accessed at
<site_root>/admin/content_chunks.

Use the 'kind' field to distinguish different types of content; e.g. 'Hero' or
'Call to Action'.

To use the content chunks in your store (say, to display a series of hero images):

    <div id="hero_images">
    <% ContentChunk.where(:kind => 'Hero').each do |chunk| %>
      <div class="hero" style="background-image:url(<%= chunk.image.url %>)">
        <h3><%= chunk.title %></h3>
        <div><%= chunk.body %></div>
      </div>
    <% end %>


Testing
-------

Be sure to add the rspec-rails gem to your Gemfile and then create a dummy test
app for the specs to run against.

    $ bundle exec rake test_app
    $ bundle exec rspec spec

Copyright (c) 2011 One Design Company, released under the New BSD License
