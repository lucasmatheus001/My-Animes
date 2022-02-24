class Anime < ApplicationRecord
  belongs_to :user
  has_many :follows, dependent: :destroy
  has_many :users, through: :follows

  require 'httparty'
  require 'json'

  enum status: { ativo: 0, excluido: 1}

  # Validations
  validates :name, presence: true,length: { minimum: 5, maximum: 100 }
  validates :description, presence: true,length: { minimum: 5, maximum: 1000 }
  validates :genres, presence: true,length: { minimum: 5, maximum: 100 }
  validates :episodes, presence: true
  validates :studios, presence: true,length: { minimum: 5, maximum: 100 }
  validates :duration, presence: true
  validates :situation, presence: true,length: { minimum: 5, maximum: 100 }


  # Scopes

  #methods
  def self.anime_search(q)
    response = HTTParty.get("https://api.jikan.moe/v4/anime?q=#{q}&sfw")
    # puts response.body
    # puts JSON.parse(response.body)["data"]
    return JSON.parse(response.body)["data"]
    
  end

  def self.new_from_search(result)
    Anime.new(
      name: result["title"],
      # description: result["synopsis"]
      image_url: result["images"]["jpg"]["image_url"]
    )
  end

    
  
end
