class Anime < ApplicationRecord
  belongs_to :user
  has_many :follows, dependent: :destroy
  has_many :users, through: :follows

  require 'httparty'
  require 'json'

  # enum status: { ativo: 0, excluido: 1}
  validates :anime_id, presence: true, uniqueness: true
  
  # Validations
  # validates :name, presence: true,length: { minimum: 5, maximum: 100 }
  # validates :description, presence: true,length: { minimum: 5, maximum: 1000 }
  # validates :genres, presence: true,length: { minimum: 5, maximum: 100 }
  # validates :episodes, presence: true
  # validates :studios, presence: true,length: { minimum: 5, maximum: 100 }
  # validates :duration, presence: true
  # validates :situation, presence: true,length: { minimum: 5, maximum: 100 }


end
