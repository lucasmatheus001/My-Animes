class AnimesController < ApplicationController
  before_action :set_anime, only: %i[ show edit update destroy ]

  def index
      @animes = Anime.order(id: :desc)
  end

  def show
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
      @anime.update(status: "excluido")
      redirect_to animes_path
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
