class TagSerializer < ActiveModel::Serializer
  attributes :id, :name, :tagType, :repos
end
