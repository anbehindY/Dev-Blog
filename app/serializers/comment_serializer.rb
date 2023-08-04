class CommentSerializer < ActiveModel::Serializer
  attributes :text, :author

  def author
    object.author.name
  end
end
