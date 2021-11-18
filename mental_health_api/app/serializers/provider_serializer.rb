class ProviderSerializer < ActiveModel::Serializer
  attributes :id
  has_one :insurance
end
