class AddPositionToContentChunk < ActiveRecord::Migration
  def self.up
    add_column :spree_content_chunks, :position, :integer
  end

  def self.down
    remove_column :spree_content_chunks, :position
  end
end