class Admin::TagsController < Admin::BaseController
  def index
    @tags = ActsAsTaggableOn::Tag.named_like(params[:term]).all
    render :json => @tags.map(&:name) if request.xhr?
  end
end