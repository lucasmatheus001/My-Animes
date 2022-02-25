class AnimesController < ApplicationController
  before_action :set_anime, only: %i[ show edit update destroy ]

  def index
      @animes = current_user.admin? ?  Anime.order(id: :desc) : current_user.animes.where(status: "ativo")
  end

  def all
    @animes = current_user.admin? ?  Anime.order(name: :asc) : Anime.where(status: "ativo").order(name: :asc)
  end

  def show
      @animes = Anime.all
  end

  def result
    @animes = Anime.all
  end

  def new
      @anime = Anime.new
  end

  def create
      @anime = Anime.new(anime_params)
      if @anime.save
        redirect_to animes_path
    else
        render :edit
    end
  end

  def edit 
  end

  def update 
      if @anime.update(anime_params)
          redirect_to animes_path
      else
          render :edit
      end
  end

  def destroy 
    #   @anime.destroy
        @anime.update(status: "excluido")
      redirect_to animes_path
  end

  def search
    result = Anime.anime_search(params[:q])
    # puts result.class
    @animes = result.map do |anime|
      Anime.new_from_search(anime)
    end
    pp @animes
    # render json: @animes

  end


  private

  def set_anime
      @anime = Anime.find(params[:id])
      # authorize @user
  end

  def anime_params
      params.require(:anime).permit(:user_id,:name, :description, :image_url, :preview , :genres, :episodes, :status, :studios, :duration, :situation)
  end
end
