class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable :confirmable

  enum role: { admin: 0, otaku: 1}



  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
