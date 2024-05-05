class AnimesController < ApplicationController
  before_action :set_anime, only: %i[ show edit update destroy ]

  def index
    # @animes = current_user.admin? ?  Anime.order(id: :desc) : current_user.animes.where(status: "ativo")
    @api_service = AnimeService.new
    @animes = Anime.all
    # @resultados = @api_service.obter_recurso
    @detalhes_animes = obter_detalhes_para_cada_anime(@animes)

    begin

      @anime_data = api_service
      puts @anime_data.class
      # Lógica para lidar com o recurso aqui


      render json: recurso
    rescue => e
      # Lidar com erros, talvez renderizar uma mensagem de erro
      flash[:error] = "Erro ao obter dados da API: #{e.message}"
      # render json: { erro: e.message }, status: :unprocessable_entity
    end

    render 'index'
  end

  def all
    @animes = current_user.admin? ?  Anime.order(name: :asc) : Anime.where(status: "ativo").order(name: :asc)
  end

  def show
      @animes = Anime.all
  end

  def busca
    api_service = AnimeService.new

    begin
      q = params[:q]
      @resultados = api_service.buscar_animes(q)
      redirect_to show_from_json_animes_path(anime: dados_json)
    rescue => e
      flash[:error] = "Erro ao realizar a busca: #{e.message}"
    end

    render 'busca'
  end

  def show_from_json
    @anime_data = JSON.parse(params[:anime], symbolize_names: true)
    @anime_comment = @anime_data[:mal_id]
    @animess = Anime.find_by(anime_id: @anime_comment)
    @comment = Comment.new
    if @animess != nil
      @comments = Comment.where(anime_id: @animess.id)
      @comment_responses = CommentResponse.joins(comment: :anime).where(comments: { anime_id: @animess.id })
    end
  end

  def cadastrar_anime_from_json
    @anime_data = JSON.parse(params[:anime], symbolize_names: true)
    @anime = Anime.new(

      anime_id: @anime_data[:mal_id],
      user_id: current_user.id
    )
    @anime.save
    render 'show_from_json'
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

  def obter_detalhes_para_cada_anime(animes)
    detalhes_animes = []
    @animes2 = animes
    @animes2.each do |anime|
      detalhes_animes << @api_service.obter_detalhes_do_anime(anime.anime_id)
    end
    detalhes_animes
  end

  def anime_params
      params.require(:anime).permit(:user_id,:name, :description, :image_url, :preview , :genres, :episodes, :status, :studios, :duration, :situation)
  end
end
