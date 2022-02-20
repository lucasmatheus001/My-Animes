class User < ApplicationRecord
  has_many :animes, dependent: :destroy
  has_many :follows, dependent: :destroy
  has_many :animes, through: :follows

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable :confirmable

  enum role: { admin: 0, otaku: 1}

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  # Validations
  validates :name, presence: true,length: { minimum: 5, maximum: 100 }
  validates :email, presence: true,length: { minimum: 5, maximum: 100 }
end
