class CreateContentChunks < ActiveRecord::Migration
  def change
    create_table :content_chunks do |t|
      t.string :title
      t.text :body
      t.string :link
      t.string :kind
      t.string :image_file_name
      t.string :image_content_type
      t.integer :image_file_size
      t.datetime :image_updated_at
      t.string :image_position
      t.timestamps
    end
  end
end
