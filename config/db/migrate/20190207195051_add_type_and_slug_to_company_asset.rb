class AddTypeAndSlugToCompanyAsset < ActiveRecord::Migration[5.1]
  def change
    add_column :company_assets, :asset_type, :string
    add_column :company_assets, :slug, :string
  end
end
