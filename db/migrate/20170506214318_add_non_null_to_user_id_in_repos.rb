class AddNonNullToUserIdInRepos < ActiveRecord::Migration[5.0]
  def change
    change_column_null :repos, :user_id, false
  end
end
