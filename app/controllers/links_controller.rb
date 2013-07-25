class LinksController < ApplicationController
  before_filter :authenticate_user!
  
  def show
    @link = Link.where(id: params[:id]).first
    @comment = Comment.new
  end
  
  def new
    @link = Link.new
  end
  
def create
    @link = current_user.links.create(params[:link])
    redirect_to link_path(id: @link.id)
 end
    
end
