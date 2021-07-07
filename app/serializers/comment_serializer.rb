class CommentSerializer < ActiveModel::Serializer
  attributes :id, :text, :image, :user_id, :post_id
end
