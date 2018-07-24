class SavedPlaceSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_one :user
  has_one :place
end
