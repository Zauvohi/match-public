class AddStateUpdateToCompanyAsset < ActiveRecord::Migration[5.1]
  def change
    add_column :company_assets, :state_changed_at, :datetime
  end
end
