class ChangeDescriptionToBeText < ActiveRecord::Migration[5.1]
  def up
    change_column :company_assets, :description, :text
  end

  def down
    change_column :company_assets, :description, :string
  end
end
