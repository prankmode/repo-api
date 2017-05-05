class RepoTagSerializer < ActiveModel::Serializer
  attributes :id
  has_one :repo
  has_one :tag
end
