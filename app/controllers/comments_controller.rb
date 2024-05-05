class CommentsController < ApplicationController
  before_action :set_anime

  def create
    @comment = Comment.new(

      anime_id: params[:comment][:anime_id],
      user_id: current_user.id,
      content: params[:comment][:content]
    )
    @comment.save

  end
  private

  def set_anime
    @anime = Anime.find_by(anime_id: params[:comment][:anime_id])
  end

  def comment_params
    params.require(:comment).permit(:user_id, :anime_id)
  end

end
