class Comment < ApplicationRecord
  belongs_to :anime
  belongs_to :user
  has_many :comment_responses
end
