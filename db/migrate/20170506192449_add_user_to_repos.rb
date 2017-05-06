class AddUserToRepos < ActiveRecord::Migration[5.0]
  def change
    add_reference :repos, :user, foreign_key: true
  end
end
