class RepoTag < ApplicationRecord
  belongs_to :repo, inverse_of: :repo_tags
  belongs_to :tag, inverse_of: :repo_tags
end
