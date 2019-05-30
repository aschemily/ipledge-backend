class UserSerializer < ActiveModel::Serializer
  has_many :challenges
  attributes :id, :name
end
