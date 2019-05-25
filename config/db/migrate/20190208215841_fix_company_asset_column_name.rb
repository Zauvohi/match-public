class FixCompanyAssetColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :company_assets, :has_pasword, :has_password
  end
end
