class RepoSerializer < ActiveModel::Serializer
  attributes :id, :name, :github_user, :full_url, :description, :toc
end
