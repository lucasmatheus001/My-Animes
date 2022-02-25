class FollowsController < ApplicationController
  def index
    @follows = current_user.follows.order(id: :desc) 
  end

  def favorites
    @favorites = current_user.admin? ? Follow.where(favorite: true) : current_user.follows.where(favorite: true)
  end
  def show 
    @follows = Follow.all
  end

  def new
    @follow = current_user.follow.new
  end

  def add_follow
    if current_user.follows.find_by(anime_id: params[:anime_id])
    else
      @follow = current_user.follows.new(anime_id: params[:anime_id])
      @follow.save
      redirect_to  root_path, notice: 'follow adicionado com sucesso!'
    end
  end

  def edit 
  end

  def remove_follow
    @follow = current_user.follows.find_by(id: params[:id])
    @follow.destroy
    redirect_to follows_path, notice: 'follow removido com sucesso!'
    @follow.inspect
  end

  def add_favorite
    if current_user.follows.where(favorite: true).find_by(anime_id: params[:anime_id])
      puts "Favorito ja existe"
    end
    if current_user.follows.find_by(anime_id: params[:anime_id])
      puts "Follow ja existe"
      @follow = current_user.follows.find_by(anime_id: params[:anime_id])
      @follow.update(favorite: true)
    else
      @follow = current_user.follows.new(anime_id: params[:anime_id], favorite: true)
      @follow.save
    end
    
  end
 
  def remove_favorite
    @follow = current_user.follows.find_by(id: params[:id])
    @follow.update(favorite: false)
    redirect_to favorites_follows_path, notice: 'favoritos removido com sucesso!'
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
