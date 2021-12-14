class ChangeUsersToUserInComments < ActiveRecord::Migration[6.1]
  def change
    rename_column :comments, :users_id, :user_id
  end
end
