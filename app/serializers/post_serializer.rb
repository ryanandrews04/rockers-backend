class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :text, :comments, :user_id, :image
end
