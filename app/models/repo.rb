class Repo < ApplicationRecord
  has_many :repo_tags
  has_many :tags, through: :repo_tags
end
