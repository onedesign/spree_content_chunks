class Spree::ContentChunk < ActiveRecord::Base
  has_attached_file :image,
                    :url => "/spree/content_chunks/:id/main/:style/:basename.:extension",
                    :path => ":rails_root/public/spree/content_chunks/:id/main/:style/:basename.:extension"

  attr_accessor :delete_image
  before_validation { image.clear if '1' == delete_image }

  validates :title, :presence => true
  validates :kind, :presence => true
end
