class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :bio, :image, :posts, :comments
end
