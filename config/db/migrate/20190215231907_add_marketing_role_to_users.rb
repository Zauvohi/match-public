class AddMarketingRoleToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :marketing_role, :boolean, default: false
  end
end
