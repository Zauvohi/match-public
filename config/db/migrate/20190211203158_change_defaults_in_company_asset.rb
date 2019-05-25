class ChangeDefaultsInCompanyAsset < ActiveRecord::Migration[5.1]
  def change
    change_column :company_assets, :pristine_condition, :boolean, default: nil
    change_column :company_assets, :has_password, :boolean, default: nil
    change_column :company_assets, :has_accesories, :boolean, default: nil
  end
end
