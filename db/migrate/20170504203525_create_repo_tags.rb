class CreateRepoTags < ActiveRecord::Migration[5.0]
  def change
    create_table :repo_tags do |t|
      t.references :repo, foreign_key: true
      t.references :tag, foreign_key: true

      t.timestamps
    end
  end
end
