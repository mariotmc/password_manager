class AddRoleToUserPasswords < ActiveRecord::Migration[7.1]
  def change
    add_column :user_passwords, :role, :integer, null: false, default: 0
  end
end
