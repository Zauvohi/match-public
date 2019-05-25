class AddRolesToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :superadmin_role, :boolean, default: false
    add_column :users, :full_time_role, :boolean, default: false
    add_column :users, :user_role, :boolean, default: false
    add_column :users, :insider_role, :boolean, default: false
    add_column :users, :customer_role, :boolean, default: false
  end
end
