class Spree::Admin::ContentChunksController < Spree::Admin::ResourceController
  def update_positions
    params[:positions].each do |id, index|
      Spree::ContentChunk.where(:id => id).update_all(:position => index)
    end
    
    respond_to do |format|
      format.js { render :text => 'Ok' }
    end
  end
end
