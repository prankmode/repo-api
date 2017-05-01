class CreateRepos < ActiveRecord::Migration[5.0]
  def change
    create_table :repos do |t|
      t.string :name, null: false
      t.string :github_user
      t.string :full_url
      t.text   :description
      t.text :toc

      t.timestamps
    end
  end
end
