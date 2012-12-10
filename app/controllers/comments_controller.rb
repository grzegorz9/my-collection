class CommentsController < ApplicationController
  def create
    @item = Item.find(params[:item_id])
    @comment = @item.comments.create(params[:comment])
    redirect_to item_path(@item)
  end
end
