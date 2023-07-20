class Comment < ActiveRecord
  belongs_to :author, class_name: 'User'
  belongs_to :post
end
