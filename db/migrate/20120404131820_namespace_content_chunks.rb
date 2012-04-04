class NamespaceContentChunks < ActiveRecord::Migration
  def up
    rename_table :content_chunks, :spree_content_chunks
  end

  def down
    rename_table :spree_content_chunks, :content_chunks
  end
end
