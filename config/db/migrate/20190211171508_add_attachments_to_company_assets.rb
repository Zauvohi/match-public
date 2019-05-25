class AddAttachmentsToCompanyAssets < ActiveRecord::Migration[5.1]
  def change
    add_column :company_assets, :receipt_data, :text
    add_column :company_assets, :return_receipt_data, :text
  end
end
