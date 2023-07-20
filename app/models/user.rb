class User < ActiveRecord::Base
  has_many :posts, foreign_key: "author_id", dependent: :destroy
  has_many :comments, foreign_key: "author_id", dependent: :destroy
  has_many :likes, foreign_key: "author_id", dependent: :destroy
end
