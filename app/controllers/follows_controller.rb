class FollowsController < ApplicationController
  def index
    @follows = Follow.order(id: :desc)
  end

  def favorites
    @favorites = Follow.where(favorite: true)
  end

  def show 
    @follows = Follow.all
  end

  def new
    @follow = current_user.follow.new
  end

  def add_follow
    @follow = current_user.follows.new(anime_id: params[:anime_id])
    @follow.save
  end

  def edit 
  end

  def remove_follow
    @follow = current_user.follows.find_by(id: params[:id])
    @follow.destroy
    redirect_to follows_path, notice: 'Musica removida com sucesso!'
  end

  def add_favorite 
    @follow = current_user.follows.new(anime_id: params[:anime_id], favorite: true)
    @follow.save
    
  end
 
  def remove_favorite
    @follow = current_user.follows.find_by(id: params[:id])
    @follow.update(favorite: false)
  end


  
  private

    def set_user
        @user = User.find(params[:id])
        # authorize @user
    end

    def follow_params
        params.required(:follow).permit(:user_id , :anime_id, :favorite)
    end
end
