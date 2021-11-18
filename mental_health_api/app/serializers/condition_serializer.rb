class ConditionSerializer < ActiveModel::Serializer
  attributes :id
  has_one :behavior
end
