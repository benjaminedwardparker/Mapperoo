class PointSerializer < ActiveModel::Serializer
  attributes :id, :name, :lat, :lng
end
