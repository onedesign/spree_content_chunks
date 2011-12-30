require 'spec_helper'

describe ContentChunk do
  it { should validate_presence_of(:title) }

  it { should validate_presence_of(:kind) }

  it { should allow_value(nil).for(:image_position) }
  it { should allow_value('').for(:image_position) }
  it { should allow_value('Left').for(:image_position) }
  it { should allow_value('Right').for(:image_position) }
  it { should allow_value('Bottom').for(:image_position) }

  it { should respond_to :delete_image }
  it { should respond_to :delete_image= }
end
