class ChallengeSerializer < ActiveModel::Serializer
  belongs_to :user
  attributes :id
end
