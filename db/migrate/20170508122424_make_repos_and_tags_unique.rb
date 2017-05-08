class MakeReposAndTagsUnique < ActiveRecord::Migration[5.0]
  def change
    add_index :repos, :name, unique: true
    add_index :tags, :name, unique: true
  end
end
