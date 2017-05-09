class Tag < ApplicationRecord
  has_many :repo_tags, dependent: :destroygit
  has_many :repos, through: :repo_tags
  belongs_to :user
  validates :name, :user, presence: true
end
