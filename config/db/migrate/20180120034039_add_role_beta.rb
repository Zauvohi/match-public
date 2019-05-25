class AddRoleBeta < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :beta_role, :boolean, default: false
  end
end
