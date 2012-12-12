class CommentsController < ApplicationController
  before_filter :login_required, only: :create
  def create
    @item = Item.find(params[:item_id])
    @comment = @item.comments.create(params[:comment])
    redirect_to item_path(@item)
  end
end
