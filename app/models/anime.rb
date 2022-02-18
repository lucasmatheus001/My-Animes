class Anime < ApplicationRecord
  belongs_to :user

  enum status: { ativo: 0, excluido: 1}

  # Validations
  validates :name, presence: true,length: { minimum: 5, maximum: 100 }
  validates :description, presence: true,length: { minimum: 5, maximum: 100 }
  validates :genres, presence: true,length: { minimum: 5, maximum: 100 }
  validates :episodes, presence: true
  validates :studios, presence: true,length: { minimum: 5, maximum: 100 }
  validates :duration, presence: true
  validates :situation, presence: true,length: { minimum: 5, maximum: 100 }
  
end
