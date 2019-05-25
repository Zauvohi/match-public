class AddTechLeadRoleToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :tech_lead_role, :boolean, default: false
  end
end
