class Comment < ActiveRecord
  belongs_to :user
  belongs_to :post
end
