class Repo < ApplicationRecord
  has_many :repo_tags, dependent: :destroy
  has_many :tags, through: :repo_tags
  belongs_to :user
  validates :name, :user, presence: true
  validates :name, uniqueness: { scope: :user }
end
