class ChallengeSerializer < ActiveModel::Serializer
  attributes :title, :location, :information, :image, :user
  belongs_to :user

end
