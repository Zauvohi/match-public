class AddManagerRoleToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :manager_role, :boolean, default: false
  end
end
