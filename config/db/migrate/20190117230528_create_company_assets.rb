class CreateCompanyAssets < ActiveRecord::Migration[5.1]
  def change
    create_table :company_assets do |t|
      t.string :name
      t.string :state
      t.string :location
      t.string :description
      t.string :serial_number
      t.text :notes
      t.boolean :pristine_condition, default: true
      t.boolean :has_accesories, default: false
      t.boolean :has_pasword, default: false
      t.references :user, index: true
      t.timestamps
    end
  end
end
