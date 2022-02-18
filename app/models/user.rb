class User < ApplicationRecord
  has_many :animes, dependent: :destroy

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable :confirmable

  enum role: { admin: 0, otaku: 1}

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  # Validations
  # validates :name, presence: true,length: { minimum: 5, maximum: 100 }
  validates :email, presence: true,length: { minimum: 5, maximum: 100 }
end
