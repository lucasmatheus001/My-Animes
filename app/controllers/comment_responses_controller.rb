class CommentResponsesController < ApplicationController
  before_action :set_comment

  def create
    @comment_response = CommentResponse.new(

      comment_id: params[:comment_response][:comment_id],
      user_id: current_user.id,
      content: params[:comment_response][:content]
    )
    @comment_response.save
    
  end

  private

  def set_comment
    @comment = Comment.find_by(id: params[:comment_response][:comment_id])
  end

  def comment_response_params
    params.require(:comment_response).permit(:user_id, :comment_id)
  end
end
