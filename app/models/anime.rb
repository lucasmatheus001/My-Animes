class Anime < ApplicationRecord
  belongs_to :user

  enum status: { ativo: 0, excluido: 1}
end
