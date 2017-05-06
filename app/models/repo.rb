class Repo < ApplicationRecord
  has_many :repo_tags
  has_many :tags, through: :repo_tags
  belongs_to :user
  validates :name, :user, presence: true
end
