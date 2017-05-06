class AddUserToTags < ActiveRecord::Migration[5.0]
  def change
    add_reference :tags, :user, foreign_key: true
    change_column_null :tags, :user_id, false
  end
end
