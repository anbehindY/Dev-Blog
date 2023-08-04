class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :text, :likes_counter, :comments_counter, :author

  def author
    object.author.name
  end
end
