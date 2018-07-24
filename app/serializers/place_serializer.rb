class PlaceSerializer < ActiveModel::Serializer
  attributes :id, :city, :city_ascii, :lat, :lng, :pop, :iso2, :iso3, :province
end
